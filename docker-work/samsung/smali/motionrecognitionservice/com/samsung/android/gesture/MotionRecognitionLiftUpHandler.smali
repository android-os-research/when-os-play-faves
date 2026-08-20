.class public Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;
.super Ljava/lang/Object;
.source "MotionRecognitionLiftUpHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;,
        Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;,
        Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LiftUpHandler"


# instance fields
.field private final MSG_INTENT_SCREEN_OFF:I

.field private final MSG_INTENT_SCREEN_ON:I

.field private final MSG_INTENT_SCREEN_UNLOCKED:I

.field private final MSG_SCREEN_ON:I

.field private final MSG_SCREEN_STATE_OFF:I

.field private mContext:Landroid/content/Context;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEnabledLiftUpHandler:Z

.field private mLiftToWakeUpSensor:Landroid/hardware/Sensor;

.field private final mLiftUpMessageHandler:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;

.field private final mLiftUpReceiver:Landroid/content/BroadcastReceiver;

.field private mLiftUpSensorEventListener:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;

.field private mPalmInputEventMonitor:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

.field private mPutDown:Z

.field private mPutUp:Z

.field private mRunningThread:Z

.field private mScreenOn:Z

.field private final mSensorHandler:Landroid/os/Handler;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTimestampPutup:J

.field private monitorThread:Ljava/lang/Thread;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Landroid/hardware/display/DisplayManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLiftUpMessageHandler(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mLiftUpMessageHandler:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLiftUpSensorEventListener(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mLiftUpSensorEventListener:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPalmInputEventMonitor(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mPalmInputEventMonitor:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPutDown(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mPutDown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunningThread(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mRunningThread:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mScreenOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEnabledLiftUpHandler(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mEnabledLiftUpHandler:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPutDown(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mPutDown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPutUp(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mPutUp:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRunningThread(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mRunningThread:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimestampPutup(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mTimestampPutup:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputMonitor"    # Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x142

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->MSG_SCREEN_ON:I

    .line 29
    const/16 v0, 0x14c

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->MSG_SCREEN_STATE_OFF:I

    .line 30
    const/16 v0, 0x156

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->MSG_INTENT_SCREEN_ON:I

    .line 31
    const/16 v0, 0x160

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->MSG_INTENT_SCREEN_OFF:I

    .line 32
    const/16 v0, 0x174

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->MSG_INTENT_SCREEN_UNLOCKED:I

    .line 36
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mLiftUpReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$2;-><init>(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 80
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mTimestampPutup:J

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mScreenOn:Z

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mPutDown:Z

    .line 83
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mPutUp:Z

    .line 89
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mRunningThread:Z

    .line 92
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mEnabledLiftUpHandler:Z

    .line 95
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mContext:Landroid/content/Context;

    .line 96
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 97
    const v4, 0x10036

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mLiftToWakeUpSensor:Landroid/hardware/Sensor;

    .line 98
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener-IA;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mLiftUpSensorEventListener:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;

    .line 99
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mEnabledLiftUpHandler:Z

    .line 100
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mPalmInputEventMonitor:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    .line 102
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "LiftUpHandler"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    .line 103
    .local v7, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 104
    new-instance v8, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v8, p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;-><init>(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mLiftUpMessageHandler:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;

    .line 106
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "LiftToWakeUpSensor"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    .line 107
    .local v9, "sensorHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mSensorHandler:Landroid/os/Handler;

    .line 110
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v10, v1

    .line 111
    .local v10, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object v4, v10

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 117
    invoke-virtual {v1, v0, v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 118
    return-void
.end method


# virtual methods
.method public checkPutDown()V
    .registers 3

    .line 167
    const-string v0, "LiftUpHandler"

    const-string v1, "[LTW] Checking PutDown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mRunningThread:Z

    if-nez v0, :cond_1d

    .line 169
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;-><init>(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->monitorThread:Ljava/lang/Thread;

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mRunningThread:Z

    .line 171
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    :cond_1d
    return-void
.end method

.method public startLiftToWakeUp()V
    .registers 6

    .line 121
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mScreenOn:Z

    const-string v1, "LiftUpHandler"

    if-nez v0, :cond_c

    .line 122
    const-string v0, "[LTW] Running already."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 125
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mScreenOn:Z

    .line 126
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mLiftToWakeUpSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_18

    goto :goto_51

    .line 130
    :cond_18
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string v4, "lift_to_wake"

    invoke-static {v2, v4, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 132
    .local v0, "setting":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LTW]  Settings Lift to wake: enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-nez v0, :cond_3e

    .line 134
    return-void

    .line 136
    :cond_3e
    const-string v2, "[LTW] Starting by Screen Off."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mLiftUpSensorEventListener:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mLiftToWakeUpSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mEnabledLiftUpHandler:Z

    .line 139
    return-void

    .line 127
    .end local v0    # "setting":I
    :cond_51
    :goto_51
    const-string v0, "[LTW] Not support: Lift to wake sensor type."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public stopLiftToWakeUp()V
    .registers 7

    .line 142
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mScreenOn:Z

    const-string v1, "LiftUpHandler"

    if-eqz v0, :cond_c

    .line 143
    const-string v0, "[LTW] Stopped already."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 146
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mScreenOn:Z

    .line 147
    const-string v0, "[LTW] Stopping by Screen On."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mEnabledLiftUpHandler:Z

    if-nez v0, :cond_19

    .line 149
    return-void

    .line 151
    :cond_19
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mLiftToWakeUpSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_22

    goto :goto_4b

    .line 155
    :cond_22
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mPutUp:Z

    if-eqz v0, :cond_37

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mTimestampPutup:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x3b9aca00

    cmp-long v0, v2, v4

    if-gez v0, :cond_37

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->checkPutDown()V

    .line 158
    :cond_37
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mRunningThread:Z

    if-nez v0, :cond_4a

    .line 159
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mLiftUpSensorEventListener:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 160
    const-string v0, "[LTW] Terminated."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->mEnabledLiftUpHandler:Z

    .line 164
    :cond_4a
    return-void

    .line 152
    :cond_4b
    :goto_4b
    const-string v0, "[LTW] Not support: Lift to wake sensor type."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method
