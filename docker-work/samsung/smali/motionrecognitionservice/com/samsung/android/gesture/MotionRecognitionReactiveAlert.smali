.class public abstract Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;
.super Ljava/lang/Object;
.source "MotionRecognitionReactiveAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;,
        Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSemContextListener;,
        Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSensorEventListener;
    }
.end annotation


# static fields
.field private static final INT_ALERT:I = 0x31

.field private static final INT_READY:I = 0x30

.field public static final MSG_ENABLE_INT:I = 0x1e

.field public static final MSG_SEND_FLAT:I = 0x2d

.field private static final MSG_SEND_REACTIVE_ALERT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"


# instance fields
.field private mEnableAccINT:Z

.field private mIsAvailableSemContextMovement:Z

.field private final mLockACCInt:Ljava/lang/Object;

.field private final mMsgHandler:Landroid/os/Handler;

.field private mPollThread:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

.field private mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

.field private mScreenOff:Z

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private mSensorHandler:Landroid/os/Handler;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorSmartAlert:Landroid/hardware/Sensor;

.field private mSmartAlertSemContextListener:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSemContextListener;

.field private mSmartAlertSensorEventListener:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSensorEventListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnableAccINT(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mEnableAccINT:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockACCInt(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mLockACCInt:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReactiveAlert_Wakelock(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreadACCInt(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->readACCInt()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mLockACCInt:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mEnableAccINT:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mScreenOff:Z

    .line 262
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mMsgHandler:Landroid/os/Handler;

    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->initReactiveAlert(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method private initReactiveAlert(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSensorManager:Landroid/hardware/SensorManager;

    .line 83
    const/4 v1, 0x0

    const-string v2, "reactive_alert"

    if-eqz v0, :cond_35

    .line 84
    const v3, 0x100c8

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSensorSmartAlert:Landroid/hardware/Sensor;

    .line 86
    if-eqz v0, :cond_35

    .line 87
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSensorEventListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSensorEventListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSensorEventListener-IA;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSmartAlertSensorEventListener:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSensorEventListener;

    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSensorHandler:Landroid/os/Handler;

    .line 92
    return-void

    .line 96
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :cond_35
    const-string v0, "scontext"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 97
    if-eqz v0, :cond_65

    .line 98
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mIsAvailableSemContextMovement:Z

    .line 99
    if-eqz v0, :cond_65

    .line 100
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSemContextListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSemContextListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSemContextListener-IA;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSmartAlertSemContextListener:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSemContextListener;

    .line 102
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 103
    .restart local v0    # "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 104
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSensorHandler:Landroid/os/Handler;

    .line 105
    return-void

    .line 109
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :cond_65
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mPollThread:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    if-nez v0, :cond_88

    .line 110
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 111
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

    .line 112
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 114
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mMsgHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;-><init>(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mPollThread:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    .line 115
    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->start()V

    .line 117
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_88
    return-void
.end method

.method private readACCInt()I
    .registers 6

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "data":I
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mLockACCInt:Ljava/lang/Object;

    monitor-enter v1

    .line 279
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/sys/class/sensors/accelerometer_sensor/reactive_alert"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_20
    .catchall {:try_start_4 .. :try_end_b} :catchall_1e

    .line 280
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v3
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    move v0, v3

    .line 281
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_20
    .catchall {:try_start_10 .. :try_end_13} :catchall_1e

    .line 283
    .end local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_28

    .line 279
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_14
    move-exception v3

    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v4

    :try_start_1a
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "data":I
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;
    :goto_1d
    throw v3
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_20
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1e

    .line 284
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "data":I
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;
    :catchall_1e
    move-exception v2

    goto :goto_2a

    .line 281
    :catch_20
    move-exception v2

    .line 282
    .local v2, "e":Ljava/io/IOException;
    :try_start_21
    const-string v3, "MotionRecognitionService"

    const-string v4, "File read fail!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v2    # "e":Ljava/io/IOException;
    :goto_28
    monitor-exit v1

    .line 285
    return v0

    .line 284
    :goto_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_1e

    throw v2
.end method

.method private writeACCInt(I)V
    .registers 6
    .param p1, "en"    # I

    .line 289
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mLockACCInt:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/class/sensors/accelerometer_sensor/reactive_alert"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_31
    .catchall {:try_start_3 .. :try_end_a} :catchall_2f

    .line 291
    .local v1, "out":Ljava/io/FileOutputStream;
    if-nez p1, :cond_17

    .line 292
    const/16 v2, 0x30

    :try_start_e
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 293
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mEnableAccINT:Z

    goto :goto_2b

    .line 290
    :catchall_15
    move-exception v2

    goto :goto_22

    .line 294
    :cond_17
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2b

    .line 295
    const/16 v3, 0x31

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 296
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mEnableAccINT:Z
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_15

    goto :goto_2b

    .line 290
    :goto_22
    :try_start_22
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v3

    :try_start_27
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;
    .end local p1    # "en":I
    :goto_2a
    throw v2

    .line 298
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;
    .restart local p1    # "en":I
    :cond_2b
    :goto_2b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_31
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2f

    .line 300
    .end local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_39

    .line 301
    :catchall_2f
    move-exception v1

    goto :goto_3b

    .line 298
    :catch_31
    move-exception v1

    .line 299
    .local v1, "e":Ljava/io/IOException;
    :try_start_32
    const-string v2, "MotionRecognitionService"

    const-string v3, "File write fail!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v1    # "e":Ljava/io/IOException;
    :goto_39
    monitor-exit v0

    .line 302
    return-void

    .line 301
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_2f

    throw v1
.end method


# virtual methods
.method public disableAccINT()V
    .registers 4

    .line 326
    const-string v0, "MotionRecognitionService"

    const-string v1, "disableAccINT "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mScreenOff:Z

    .line 328
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mEnableAccINT:Z

    if-nez v2, :cond_14

    .line 329
    const-string v1, "AccINT is already disabled. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 332
    :cond_14
    invoke-direct {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->writeACCInt(I)V

    .line 333
    const-string v1, "disableAccINT Complete!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method public disableSmartAlert()Z
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSensorSmartAlert:Landroid/hardware/Sensor;

    const/4 v1, 0x1

    const-string v2, "MotionRecognitionService"

    if-eqz v0, :cond_14

    .line 137
    const-string v0, "[SMART_ALERT] unregister(): SensorType"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSmartAlertSensorEventListener:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 139
    return v1

    .line 141
    :cond_14
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mIsAvailableSemContextMovement:Z

    if-eqz v0, :cond_26

    .line 142
    const-string v0, "[SMART_ALERT] unregister(): SemContext"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSmartAlertSemContextListener:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSemContextListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 144
    return v1

    .line 146
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public enableAccINT()V
    .registers 6

    .line 308
    const-string v0, "MotionRecognitionService"

    const-string v1, "enableAccINT "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mScreenOff:Z

    if-eqz v1, :cond_19

    .line 310
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mPollThread:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 311
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mScreenOff:Z

    .line 314
    :cond_19
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mEnableAccINT:Z

    if-eqz v1, :cond_23

    .line 315
    const-string v1, "AccINT is already enabled. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 318
    :cond_23
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->writeACCInt(I)V

    .line 319
    const-string v1, "enableAccINT Complete!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method public enableSmartAlert()Z
    .registers 7

    .line 120
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSensorSmartAlert:Landroid/hardware/Sensor;

    const/4 v1, 0x1

    const-string v2, "MotionRecognitionService"

    if-eqz v0, :cond_19

    .line 121
    const-string v0, "[SMART_ALERT] register(): SensorType"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSmartAlertSensorEventListener:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSensorEventListener;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSensorSmartAlert:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSensorHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 124
    return v1

    .line 126
    :cond_19
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mIsAvailableSemContextMovement:Z

    if-eqz v0, :cond_31

    .line 127
    const-string v0, "[SMART_ALERT] register(): SemContext"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSmartAlertSemContextListener:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSemContextListener;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mSensorHandler:Landroid/os/Handler;

    .line 129
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 128
    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILandroid/os/Looper;)Z

    .line 130
    return v1

    .line 132
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public abstract sendMotionReactiveAlert(I)V
.end method

.method public setAccIntStatus(I)V
    .registers 6
    .param p1, "status"    # I

    .line 340
    const-wide/16 v0, 0x0

    const/16 v2, 0x1e

    if-ne p1, v2, :cond_16

    .line 341
    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mEnableAccINT:Z

    if-eqz v3, :cond_12

    .line 342
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mPollThread:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v3, v3, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1d

    .line 344
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mScreenOff:Z

    goto :goto_1d

    .line 347
    :cond_16
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->mPollThread:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v2, v2, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 349
    :goto_1d
    return-void
.end method
