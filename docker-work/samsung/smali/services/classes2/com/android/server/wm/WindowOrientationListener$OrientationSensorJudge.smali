.class public final Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;
.super Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OrientationSensorJudge"
.end annotation


# static fields
.field public static final PREFERRED_ROTATION_LANDSCAPE:I = 0x1

.field public static final PREFERRED_ROTATION_PORTRAIT:I = 0x0

.field public static final PREFERRED_ROTATION_UNSET:I = -0x1

.field public static final ROTATION_UNSET:I = -0x1


# instance fields
.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mCancelRotationResolverRequest:Ljava/lang/Runnable;

.field public mCurrentCallbackId:I

.field public mDesiredRotation:I

.field public mLandscapePreferred:I

.field public mLastRotationResolution:I

.field public mLastRotationResolutionTimeStamp:J

.field public mProposedRotation:I

.field public mRotationEvaluationScheduled:Z

.field public mRotationEvaluator:Ljava/lang/Runnable;

.field public mRotationMemorizationTimeoutMillis:J

.field public mRotationResolverTimeoutMillis:J

.field public mTouchEndedTimestampNanos:J

.field public mTouching:Z

.field public mUnfoldEventDetected:Z

.field public final synthetic this$0:Lcom/android/server/wm/WindowOrientationListener;


# direct methods
.method public static synthetic $r8$lambda$cEtkiG5X65bk4YBj0ipmLqKYcRQ(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->lambda$setupRotationResolverParameters$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCancelRotationResolverRequest(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentCallbackId(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmRotationEvaluationScheduled(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinalizeRotation(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener;)V
    .registers 4

    .line 1167
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 1168
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/wm/WindowOrientationListener;)V

    const-wide/high16 v0, -0x8000000000000000L

    .line 1154
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const/4 p1, -0x1

    .line 1155
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1156
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 1162
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    const/4 v0, 0x0

    .line 1163
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    .line 1165
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLandscapePreferred:I

    .line 1463
    new-instance p1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;-><init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    .line 1169
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->setupRotationResolverParameters()V

    .line 1171
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1172
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-void
.end method

.method private synthetic lambda$setupRotationResolverParameters$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 1179
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    const-string/jumbo v0, "rotation_resolver_timeout_millis"

    .line 1180
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "rotation_memorization_timeout_millis"

    .line 1181
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1182
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->readRotationResolverParameters()V

    :cond_19
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OrientationSensorJudge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDesiredRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1365
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1364
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTouching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTouchEndedTimestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mLastRotationResolution="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public evaluateRotationChangeLocked()I
    .registers 5

    .line 1383
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->unscheduleRotationEvaluationLocked()V

    .line 1384
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_b

    return v2

    .line 1387
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 1388
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->isDesiredRotationAcceptableLocked(J)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1389
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    return v0

    .line 1392
    :cond_1a
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    return v2
.end method

.method public final finalizeRotation(I)V
    .registers 4

    .line 1399
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmLock(Lcom/android/server/wm/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1400
    :try_start_7
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 1401
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I

    move-result p1

    .line 1402
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1f

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1e

    .line 1405
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    .line 1406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolutionTimeStamp:J

    .line 1407
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener;->onProposedRotationChanged(I)V

    :cond_1e
    return-void

    :catchall_1f
    move-exception p0

    .line 1402
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public getProposedRotationLocked()I
    .registers 1

    .line 1201
    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    return p0
.end method

.method public final isDesiredRotationAcceptableLocked(J)Z
    .registers 10

    .line 1412
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mUnfoldEventDetected:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 1415
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    return v2

    .line 1418
    :cond_c
    iget-wide v3, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const-wide/32 v5, 0x1dcd6500

    add-long/2addr v3, v5

    cmp-long p0, p1, v3

    if-gez p0, :cond_17

    return v2

    :cond_17
    return v1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 6

    .line 1336
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAccuracyChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowOrientationListener"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {p1}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmSupportTablet(Lcom/android/server/wm/WindowOrientationListener;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_22

    move v1, v0

    goto :goto_3b

    .line 1341
    :cond_22
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {p1}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmSupportSamsungRotation(Lcom/android/server/wm/WindowOrientationListener;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_3b

    :cond_2b
    if-eqz p2, :cond_32

    if-ne p2, v1, :cond_30

    goto :goto_32

    :cond_30
    move p1, v0

    goto :goto_33

    :cond_32
    :goto_32
    move p1, v1

    :goto_33
    const/4 v2, 0x2

    if-eq p2, v2, :cond_3a

    if-ne p2, v1, :cond_39

    goto :goto_3a

    :cond_39
    move v1, v0

    :cond_3a
    :goto_3a
    move v0, p1

    .line 1355
    :goto_3b
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->updateUnfoldEventDetected(Z)V

    .line 1356
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->updateRotationPreference(I)V

    return-void
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 11

    .line 1480
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    return-void

    .line 1484
    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result v4

    const/4 v0, -0x1

    if-lt v4, v0, :cond_ea

    const/4 v1, 0x3

    if-le v4, v1, :cond_1a

    goto/16 :goto_ea

    :cond_1a
    const/16 v1, 0x14d

    .line 1490
    iget-wide v2, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->timestamp:J

    .line 1493
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->rotationToLogEnum(I)I

    move-result p1

    const/4 v5, 0x2

    .line 1490
    invoke-static {v1, v2, v3, p1, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJII)V

    .line 1496
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrientationSensorJudge.onSemContextChanged, Rotation: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WindowOrientationListener"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowOrientationListener;->isRotationResolverEnabled()Z

    move-result p1

    if-eqz p1, :cond_e7

    .line 1499
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowOrientationListener;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 1500
    iget p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    if-eq p1, v0, :cond_79

    .line 1501
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolutionTimeStamp:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationMemorizationTimeoutMillis:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_79

    .line 1503
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reusing the last rotation resolution: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    iget p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    goto :goto_7d

    :cond_79
    const/4 p1, 0x0

    .line 1507
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    :goto_7d
    return-void

    .line 1512
    :cond_7e
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v0, p1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    if-nez v0, :cond_8e

    .line 1513
    const-class v0, Landroid/rotationresolver/RotationResolverInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/rotationresolver/RotationResolverInternal;

    iput-object v0, p1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    :cond_8e
    const/4 p1, 0x0

    .line 1518
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_a3

    .line 1520
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopApp()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 1521
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_a3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_a3

    move-object v3, v0

    goto :goto_a4

    :cond_a3
    move-object v3, p1

    .line 1528
    :goto_a4
    iget p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    .line 1530
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Ljava/lang/Runnable;

    if-eqz p1, :cond_b9

    .line 1531
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowOrientationListener;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1533
    :cond_b9
    new-instance v8, Landroid/os/CancellationSignal;

    invoke-direct {v8}, Landroid/os/CancellationSignal;-><init>()V

    .line 1534
    new-instance p1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;

    invoke-direct {p1, v8}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;-><init>(Landroid/os/CancellationSignal;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Ljava/lang/Runnable;

    .line 1535
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowOrientationListener;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationResolverTimeoutMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1538
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v1, p1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    new-instance v2, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$3;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$3;-><init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;I)V

    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {p1}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmCurrentRotation(Lcom/android/server/wm/WindowOrientationListener;)I

    move-result v5

    iget-wide v6, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationResolverTimeoutMillis:J

    invoke-virtual/range {v1 .. v8}, Landroid/rotationresolver/RotationResolverInternal;->resolveRotation(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Ljava/lang/String;IIJLandroid/os/CancellationSignal;)V

    goto :goto_ea

    .line 1570
    :cond_e7
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    :cond_ea
    :goto_ea
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12

    .line 1237
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v5, v0

    const/4 v0, -0x1

    if-lt v5, v0, :cond_f2

    const/4 v2, 0x3

    if-le v5, v2, :cond_e

    goto/16 :goto_f2

    :cond_e
    const/16 v2, 0x14d

    .line 1243
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 1246
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->rotationToLogEnum(I)I

    move-result p1

    const/4 v6, 0x2

    .line 1243
    invoke-static {v2, v3, v4, p1, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJII)V

    .line 1249
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {p1}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmSupportSamsungRotation(Lcom/android/server/wm/WindowOrientationListener;)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_26

    .line 1250
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->updateRotationPreference(I)V

    .line 1252
    :cond_26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OrientationSensorJudge.onSensorChanged, Rotation: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "WindowOrientationListener"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowOrientationListener;->isRotationResolverEnabled()Z

    move-result p1

    if-eqz p1, :cond_ef

    .line 1255
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowOrientationListener;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 1256
    iget p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    if-eq p1, v0, :cond_79

    .line 1257
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolutionTimeStamp:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationMemorizationTimeoutMillis:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_79

    .line 1259
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reusing the last rotation resolution: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    goto :goto_7c

    .line 1263
    :cond_79
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    :goto_7c
    return-void

    .line 1268
    :cond_7d
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v0, p1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    if-nez v0, :cond_97

    .line 1269
    const-class v0, Landroid/rotationresolver/RotationResolverInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/rotationresolver/RotationResolverInternal;

    iput-object v0, p1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    .line 1271
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object p1, p1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    if-nez p1, :cond_97

    .line 1272
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    return-void

    :cond_97
    const/4 p1, 0x0

    .line 1278
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_ac

    .line 1280
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopApp()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 1281
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_ac

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_ac

    move-object v4, v0

    goto :goto_ad

    :cond_ac
    move-object v4, p1

    .line 1288
    :goto_ad
    iget p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    .line 1290
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Ljava/lang/Runnable;

    if-eqz p1, :cond_c1

    .line 1291
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowOrientationListener;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1293
    :cond_c1
    new-instance v9, Landroid/os/CancellationSignal;

    invoke-direct {v9}, Landroid/os/CancellationSignal;-><init>()V

    .line 1294
    new-instance p1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;

    invoke-direct {p1, v9}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;-><init>(Landroid/os/CancellationSignal;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Ljava/lang/Runnable;

    .line 1295
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowOrientationListener;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationResolverTimeoutMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1298
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v2, p1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    new-instance v3, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;

    invoke-direct {v3, p0, v5}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;-><init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;I)V

    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {p1}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmCurrentRotation(Lcom/android/server/wm/WindowOrientationListener;)I

    move-result v6

    iget-wide v7, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationResolverTimeoutMillis:J

    invoke-virtual/range {v2 .. v9}, Landroid/rotationresolver/RotationResolverInternal;->resolveRotation(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Ljava/lang/String;IIJLandroid/os/CancellationSignal;)V

    goto :goto_f2

    .line 1330
    :cond_ef
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    :cond_f2
    :goto_f2
    return-void
.end method

.method public onTouchEndLocked(J)V
    .registers 4

    const/4 v0, 0x0

    .line 1211
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 1212
    iput-wide p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 1213
    iget p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget p2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-eq p1, p2, :cond_12

    .line 1214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    .line 1215
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    :cond_12
    return-void
.end method

.method public onTouchStartLocked()V
    .registers 2

    const/4 v0, 0x1

    .line 1206
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    return-void
.end method

.method public final readRotationResolverParameters()V
    .registers 5

    const-string/jumbo v0, "window_manager"

    const-string/jumbo v1, "rotation_resolver_timeout_millis"

    const-wide/16 v2, 0x2bc

    .line 1189
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationResolverTimeoutMillis:J

    const-string/jumbo v1, "rotation_memorization_timeout_millis"

    const-wide/16 v2, 0xbb8

    .line 1193
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationMemorizationTimeoutMillis:J

    return-void
.end method

.method public resetLocked(Z)V
    .registers 4

    if-eqz p1, :cond_7

    const/4 p1, -0x1

    .line 1374
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1375
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    :cond_7
    const/4 p1, 0x0

    .line 1377
    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    const-wide/high16 v0, -0x8000000000000000L

    .line 1378
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 1379
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->unscheduleRotationEvaluationLocked()V

    return-void
.end method

.method public final rotationToLogEnum(I)I
    .registers 3

    const/4 p0, 0x1

    if-eqz p1, :cond_10

    const/4 v0, 0x2

    if-eq p1, p0, :cond_f

    const/4 p0, 0x3

    if-eq p1, v0, :cond_e

    if-eq p1, p0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p0, 0x4

    :cond_e
    return p0

    :cond_f
    return v0

    :cond_10
    return p0
.end method

.method public final scheduleRotationEvaluationIfNecessaryLocked(J)V
    .registers 9

    .line 1425
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    const-string v1, "WindowOrientationListener"

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-ne v0, v2, :cond_d

    goto :goto_4e

    .line 1432
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mUnfoldEventDetected:Z

    if-nez v0, :cond_1c

    const-string/jumbo p0, "scheduleRotationEvaluationLocked: ignoring, user is still touching the screen."

    .line 1433
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1438
    :cond_1c
    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const-wide/32 v4, 0x1dcd6500

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-ltz v0, :cond_33

    .line 1441
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result p0

    if-eqz p0, :cond_32

    const-string/jumbo p0, "scheduleRotationEvaluationLocked: ignoring, already past the next possible time of rotation."

    .line 1442
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-void

    :cond_33
    sub-long/2addr v2, p1

    long-to-float p1, v2

    const p2, 0x358637bd    # 1.0E-6f

    mul-float/2addr p1, p2

    float-to-double p1, p1

    .line 1450
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    .line 1451
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmHandler(Lcom/android/server/wm/WindowOrientationListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    .line 1452
    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    return-void

    .line 1426
    :cond_4e
    :goto_4e
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result p0

    if-eqz p0, :cond_5a

    const-string/jumbo p0, "scheduleRotationEvaluationLocked: ignoring, an evaluation is already scheduled or is unnecessary."

    .line 1427
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    return-void
.end method

.method public final setupRotationResolverParameters()V
    .registers 4

    .line 1178
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)V

    const-string/jumbo v2, "window_manager"

    .line 1177
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1185
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->readRotationResolverParameters()V

    return-void
.end method

.method public final unscheduleRotationEvaluationLocked()V
    .registers 3

    .line 1456
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    if-nez v0, :cond_5

    return-void

    .line 1459
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmHandler(Lcom/android/server/wm/WindowOrientationListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1460
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    return-void
.end method

.method public final updateRotationPreference(I)V
    .registers 3

    .line 1228
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLandscapePreferred:I

    if-eq v0, p1, :cond_2b

    .line 1229
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLandscapePreferred:I

    .line 1230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onLandscapePreferredChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLandscapePreferred:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowOrientationListener"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLandscapePreferred:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowOrientationListener;->onLandscapePreferredChanged(Z)V

    :cond_2b
    return-void
.end method

.method public final updateUnfoldEventDetected(Z)V
    .registers 3

    .line 1220
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mUnfoldEventDetected:Z

    if-eq v0, p1, :cond_1d

    .line 1221
    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mUnfoldEventDetected:Z

    .line 1222
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onUnfoldEventChanged : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowOrientationListener"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method
