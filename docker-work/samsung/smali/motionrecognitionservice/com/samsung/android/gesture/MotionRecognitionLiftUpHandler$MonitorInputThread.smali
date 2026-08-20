.class public Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;
.super Ljava/lang/Object;
.source "MotionRecognitionLiftUpHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonitorInputThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    .line 201
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 205
    .local v0, "startTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LTW] Monitoring touch is started at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LiftUpHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "keyguard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 207
    .local v2, "km":Landroid/app/KeyguardManager;
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmPalmInputEventMonitor(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    move-result-object v4

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mEventCnt:J

    .line 208
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fputmPutDown(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V

    .line 209
    :cond_3a
    :goto_3a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v0

    const-wide/16 v10, 0x1388

    cmp-long v4, v8, v10

    if-gez v4, :cond_92

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmRunningThread(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 211
    const-wide/16 v8, 0x64

    :try_start_4f
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_52} :catch_53

    .line 214
    goto :goto_57

    .line 212
    :catch_53
    move-exception v4

    .line 213
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 216
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_57
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-nez v4, :cond_68

    .line 217
    const-string v4, "[LTW] Unlock KeyGuard."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v4, v7}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fputmRunningThread(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V

    goto :goto_3a

    .line 219
    :cond_68
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmPalmInputEventMonitor(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    move-result-object v4

    iget-wide v8, v4, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mEventCnt:J

    cmp-long v4, v8, v5

    if-lez v4, :cond_7f

    .line 220
    const-string v4, "[LTW] User Input."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v4, v7}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fputmRunningThread(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V

    goto :goto_3a

    .line 222
    :cond_7f
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmPutDown(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 223
    const-string v4, "[LTW] Put Down."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v4, v7}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fputmRunningThread(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V

    goto :goto_3a

    .line 228
    :cond_92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LTW] Monitoring touch is terminated at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v4, v7}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fputmRunningThread(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V

    .line 230
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Z

    move-result v4

    if-eqz v4, :cond_d3

    .line 231
    const-string v4, "[LTW] Screen is On"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Landroid/hardware/SensorManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmLiftUpSensorEventListener(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpSensorEventListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 233
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$MonitorInputThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v3, v7}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fputmEnabledLiftUpHandler(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Z)V

    .line 235
    :cond_d3
    return-void
.end method
