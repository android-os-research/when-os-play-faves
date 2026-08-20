.class public abstract Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;
.super Ljava/lang/Object;
.source "SemProximitySensorObserver.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceService"


# instance fields
.field public mIsRegisterListener:Z

.field public mPrxSensor:Landroid/hardware/Sensor;

.field public mSensorThread:Landroid/os/HandlerThread;

.field public mSmgr:Landroid/hardware/SensorManager;

.field public mThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mIsRegisterListener:Z

    const-string/jumbo v0, "sensor"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSmgr:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_1b

    const/16 v0, 0x8

    .line 23
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mPrxSensor:Landroid/hardware/Sensor;

    :cond_1b
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public abstract onSensorChanged(Landroid/hardware/SensorEvent;)V
.end method

.method public registerListener()Z
    .registers 6

    .line 29
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mIsRegisterListener:Z

    const/4 v1, 0x0

    if-nez v0, :cond_38

    .line 31
    :try_start_5
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "sensor thread"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSensorThread:Landroid/os/HandlerThread;

    .line 32
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 33
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mThreadHandler:Landroid/os/Handler;

    .line 34
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSmgr:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mPrxSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v2, p0, v3, v4, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_27

    move v1, v0

    goto :goto_35

    :catch_27
    move-exception v0

    const-string v2, "FaceService"

    const-string/jumbo v3, "registerListener : failed to register sensor listener"

    .line 37
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :goto_35
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mIsRegisterListener:Z

    :cond_38
    return v1
.end method

.method public declared-synchronized unregisterListener()V
    .registers 4

    monitor-enter p0

    .line 46
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mIsRegisterListener:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-eqz v0, :cond_21

    .line 48
    :try_start_5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSmgr:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b
    .catchall {:try_start_5 .. :try_end_a} :catchall_23

    goto :goto_14

    :catch_b
    move-exception v0

    :try_start_c
    const-string v1, "FaceService"

    const-string/jumbo v2, "unregisterListener : failed to unregister sensor listener"

    .line 50
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :goto_14
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSensorThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1e

    .line 53
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSensorThread:Landroid/os/HandlerThread;

    :cond_1e
    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mIsRegisterListener:Z
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_23

    .line 58
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method
