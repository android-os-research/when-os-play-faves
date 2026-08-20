.class public Lcom/android/server/AnyMotionDetector$1;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .registers 2

    .line 311
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11

    .line 315
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v0}, Lcom/android/server/AnyMotionDetector;->-$$Nest$fgetmLock(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 316
    :try_start_7
    new-instance v7, Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v4, p1, v8

    const/4 v1, 0x1

    aget v5, p1, v1

    const/4 v1, 0x2

    aget v6, p1, v1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    .line 318
    iget-object p1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {p1}, Lcom/android/server/AnyMotionDetector;->-$$Nest$fgetmRunningStats(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->accumulate(Lcom/android/server/AnyMotionDetector$Vector3;)V

    .line 321
    iget-object p1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {p1}, Lcom/android/server/AnyMotionDetector;->-$$Nest$fgetmRunningStats(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getSampleCount()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-$$Nest$fgetmNumSufficientSamples(Lcom/android/server/AnyMotionDetector;)I

    move-result v1

    const/4 v2, -0x1

    if-lt p1, v1, :cond_3f

    .line 322
    iget-object p1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {p1}, Lcom/android/server/AnyMotionDetector;->-$$Nest$mstopOrientationMeasurementLocked(Lcom/android/server/AnyMotionDetector;)I

    move-result p1

    goto :goto_40

    :cond_3f
    move p1, v2

    .line 324
    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_61

    if-eq p1, v2, :cond_60

    .line 326
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v0}, Lcom/android/server/AnyMotionDetector;->-$$Nest$fgetmHandler(Lcom/android/server/AnyMotionDetector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-$$Nest$fgetmWakelockTimeout(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 327
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v0, v8}, Lcom/android/server/AnyMotionDetector;->-$$Nest$fputmWakelockTimeoutIsActive(Lcom/android/server/AnyMotionDetector;Z)V

    .line 328
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {p0}, Lcom/android/server/AnyMotionDetector;->-$$Nest$fgetmCallback(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;->onAnyMotionResult(I)V

    :cond_60
    return-void

    :catchall_61
    move-exception p0

    .line 324
    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p0
.end method
