.class public Lcom/samsung/android/gesture/AdaptiveBrightnessController;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/AdaptiveBrightnessController$AdaptiveBrightnessHandler;,
        Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;,
        Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;
    }
.end annotation


# static fields
.field private static final ACTION_CAMERA_ADAPTIVE_BRIGHTNESS:Ljava/lang/String; = "com.samsung.adaptivebrightnessgo.action.SET_LUX"

.field private static final DEBUG_HISTORY_SIZE:I = 0xc8

.field private static final MSG_FROM_ADAPTIVE_BRIGHTNESS:I = 0x55

.field private static final SENSOR_TYPE_CAMERA_LIGHT:I = 0x10044

.field private static final SENSOR_TYPE_PHYSICAL_LIGHT:I = 0x1003e

.field private static final STOP_SERVICE:Ljava/lang/String; = "stop_ab_service"

.field private static final STOP_SERVICE_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"


# instance fields
.field mCameraLightSensor:Landroid/hardware/Sensor;

.field private final mCameraLightSensorListener:Landroid/hardware/SensorEventListener;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistrationHistory:Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray<",
            "Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;",
            ">;"
        }
    .end annotation
.end field

.field mSensor:Landroid/hardware/Sensor;

.field mSensorManager:Landroid/hardware/SensorManager;

.field private mServiceStarted:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmServiceStarted(Lcom/samsung/android/gesture/AdaptiveBrightnessController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mServiceStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mconvertTimeToStr(Lcom/samsung/android/gesture/AdaptiveBrightnessController;J)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->convertTimeToStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendLuxData(Lcom/samsung/android/gesture/AdaptiveBrightnessController;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->sendLuxData(F)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mServiceStarted:Z

    .line 42
    new-instance v0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mRegistrationHistory:Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;

    .line 146
    new-instance v3, Lcom/samsung/android/gesture/AdaptiveBrightnessController$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/AdaptiveBrightnessController$1;-><init>(Lcom/samsung/android/gesture/AdaptiveBrightnessController;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 249
    new-instance v0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/AdaptiveBrightnessController$4;-><init>(Lcom/samsung/android/gesture/AdaptiveBrightnessController;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mCameraLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 94
    iput-object p2, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mContext:Landroid/content/Context;

    .line 96
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 97
    const v1, 0x1003e

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mSensor:Landroid/hardware/Sensor;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10044

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mCameraLightSensor:Landroid/hardware/Sensor;

    .line 99
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AdaptiveBrightnessController"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 101
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 102
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_6d

    .line 103
    new-instance v2, Lcom/samsung/android/gesture/AdaptiveBrightnessController$AdaptiveBrightnessHandler;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/gesture/AdaptiveBrightnessController$AdaptiveBrightnessHandler;-><init>(Lcom/samsung/android/gesture/AdaptiveBrightnessController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v8, v2

    .line 109
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.adaptivebrightnessgo.action.SET_LUX"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mHandler:Landroid/os/Handler;

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 111
    return-void

    .line 105
    .end local v8    # "filter":Landroid/content/IntentFilter;
    :cond_6d
    const-string v2, "MotionRecognitionService"

    const-string v3, "Failed getting looper for handler"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method private declared-synchronized addRegistrationHistory(Z)V
    .registers 5
    .param p1, "in"    # Z

    monitor-enter p0

    .line 289
    :try_start_1
    new-instance v0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;-><init>(Lcom/samsung/android/gesture/AdaptiveBrightnessController;Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration-IA;)V

    .line 290
    .local v0, "t":Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;
    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;->setRegister(Z)V

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;->setTime(J)V

    .line 292
    iget-object v1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mRegistrationHistory:Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 293
    monitor-exit p0

    return-void

    .line 288
    .end local v0    # "t":Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;
    .end local p0    # "this":Lcom/samsung/android/gesture/AdaptiveBrightnessController;
    .end local p1    # "in":Z
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private convertTimeToStr(J)Ljava/lang/String;
    .registers 8
    .param p1, "time"    # J

    .line 299
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 300
    const-string v0, ""

    return-object v0

    .line 302
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 305
    .local v1, "today":Ljava/util/Calendar;
    if-eqz v1, :cond_74

    .line 306
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 307
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 309
    .local v3, "month":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .end local v3    # "month":I
    :cond_74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private sendLuxData(F)V
    .registers 5
    .param p1, "lux"    # F

    .line 238
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const-string v1, "MotionRecognitionService"

    if-gez v0, :cond_1e

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lux value is not received lux: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 241
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive lux: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  action: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 243
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x55

    iput v1, v0, Landroid/os/Message;->what:I

    .line 244
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    .end local v0    # "msg":Landroid/os/Message;
    :goto_4d
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 270
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mRegistrationHistory:Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;

    if-eqz v0, :cond_5c

    .line 271
    const-string v0, " ---------------------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " : CameraLight Registration History : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mRegistrationHistory:Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    const-string v0, " ---------------------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    iget-object v1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mRegistrationHistory:Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 276
    iget-object v1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mRegistrationHistory:Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;

    .line 277
    .local v1, "tmp":Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;
    iget-boolean v2, v1, Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;->m_register:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4e

    .line 278
    const-string v2, "       Register   @ %s%n"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;->m_timeStr:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {p1, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_59

    .line 280
    .end local p0    # "this":Lcom/samsung/android/gesture/AdaptiveBrightnessController;
    :cond_4e
    const-string v2, "       Unregister @ %s%n"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;->m_timeStr:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {p1, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_5e

    .line 275
    .end local v1    # "tmp":Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;
    :goto_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 284
    .end local v0    # "i":I
    :cond_5c
    monitor-exit p0

    return-void

    .line 269
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected startService()V
    .registers 7

    .line 164
    iget-boolean v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mServiceStarted:Z

    const-string v1, "MotionRecognitionService"

    if-eqz v0, :cond_c

    .line 165
    const-string v0, "Service is already Started!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 168
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mServiceStarted:Z

    .line 170
    const-string v2, "startService adaptivebrightnessgo "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mCameraLightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_26

    .line 174
    iget-object v2, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mCameraLightSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 175
    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->addRegistrationHistory(Z)V

    goto :goto_30

    .line 177
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/gesture/AdaptiveBrightnessController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/AdaptiveBrightnessController$2;-><init>(Lcom/samsung/android/gesture/AdaptiveBrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    :goto_30
    return-void
.end method

.method protected stopService()V
    .registers 5

    .line 202
    iget-boolean v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mServiceStarted:Z

    const-string v1, "MotionRecognitionService"

    if-nez v0, :cond_c

    .line 203
    const-string v0, "Service is already Stopped!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 206
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mServiceStarted:Z

    .line 208
    const-string v2, "stopService adaptivebrightnessgo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mCameraLightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_23

    .line 212
    iget-object v2, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mCameraLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 213
    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->addRegistrationHistory(Z)V

    goto :goto_2d

    .line 215
    :cond_23
    iget-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/gesture/AdaptiveBrightnessController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/AdaptiveBrightnessController$3;-><init>(Lcom/samsung/android/gesture/AdaptiveBrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    :goto_2d
    return-void
.end method
