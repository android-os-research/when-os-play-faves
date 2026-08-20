.class Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;
.super Ljava/lang/Object;
.source "MotionRecognitionLiftUpHandler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiftUpSensorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .line 241
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 245
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x10036

    if-ne v0, v1, :cond_13e

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LTW] onSensorChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " curr time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiftUpHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xbebc200

    cmp-long v0, v3, v5

    if-lez v0, :cond_5b

    .line 248
    const-string v0, "[LTW] Ignore outdated event."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fputmPutUp(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V

    .line 250
    return-void

    .line 253
    :cond_5b
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    const/4 v3, 0x1

    if-nez v0, :cond_74

    .line 254
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fputmPutUp(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fputmTimestampPutup(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;J)V

    goto/16 :goto_13e

    .line 257
    :cond_74
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_13e

    .line 258
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fputmPutUp(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fputmPutDown(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 261
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fputmRunningThread(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V

    .line 262
    const-string v0, "[LTW] Screen is Off."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 265
    :cond_9b
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmRunningThread(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Z

    move-result v0

    if-nez v0, :cond_a9

    .line 266
    const-string v0, "[LTW] Monitoring touch is not working."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 270
    :cond_a9
    const/4 v0, 0x0

    .line 271
    .local v0, "isFaceUnlockActive":Z
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 273
    .local v4, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    nop

    .line 274
    const/16 v5, 0x100

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v5

    if-ne v5, v3, :cond_c3

    move v2, v3

    :cond_c3
    move v0, v2

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LTW] FaceUnlock = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Landroid/content/Context;

    move-result-object v2

    const-string v5, "keyguard"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 279
    .local v2, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v5

    if-nez v5, :cond_fb

    if-eqz v0, :cond_fb

    .line 280
    const-string v5, "[LTW] Device Unlocked."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fputmRunningThread(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V

    .line 282
    return-void

    .line 284
    :cond_fb
    const-string v3, "[LTW] Device Locked."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_10c

    .line 288
    const-string v3, "[LTW] Keyguard Unlocked."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void

    .line 291
    :cond_10c
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmPalmInputEventMonitor(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    move-result-object v3

    iget-wide v5, v3, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mEventCnt:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_120

    .line 292
    const-string v3, "[LTW] User Input++"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 296
    :cond_120
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Landroid/content/Context;

    move-result-object v3

    const-string v5, "power"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 298
    .local v3, "pm":Landroid/os/PowerManager;
    :try_start_12e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->semGoToSleep(J)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_135} :catch_136

    .line 301
    goto :goto_13e

    .line 299
    :catch_136
    move-exception v5

    .line 300
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v0    # "isFaceUnlockActive":Z
    .end local v2    # "km":Landroid/app/KeyguardManager;
    .end local v3    # "pm":Landroid/os/PowerManager;
    .end local v4    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_13e
    :goto_13e
    return-void
.end method
