.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/SemContextManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    .line 535
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 20
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 539
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmDropClassifierSensor(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/hardware/Sensor;

    move-result-object v1

    const-string v2, "MotionRecognitionSensorChecker"

    if-eqz v1, :cond_12

    .line 540
    const-string v1, "Free fall event skip!"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return-void

    .line 543
    :cond_12
    iget-object v1, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mgetDeviceInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V

    .line 545
    iget-object v1, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$misSensorHubSupported(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mgetMcuInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V

    .line 548
    :cond_61
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getFreeFallDetectionContext()Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;

    move-result-object v1

    .line 549
    .local v1, "freeFallDetection":Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->getHeight()J

    move-result-wide v10

    .line 550
    .local v10, "height":J
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->getStatus()I

    move-result v12

    .line 551
    .local v12, "status":I
    iget-object v4, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mgetFreeFallTime(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;J)Ljava/lang/String;

    move-result-object v13

    .line 552
    .local v13, "time":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FFD - status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v14, 0x2

    if-ne v12, v14, :cond_1b2

    .line 556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetsEventType()[Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    aget-object v7, v7, v15

    const-string v8, "EVENT_TYPE"

    const/4 v9, 0x1

    invoke-static {v6, v8, v7, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V

    .line 557
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "FF_HEIGHT"

    invoke-static {v6, v8, v7, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V

    .line 558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "FF_TIME"

    invoke-static {v6, v8, v7, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V

    .line 559
    new-instance v4, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo-IA;)V

    move-object v8, v4

    .line 560
    .local v8, "dumpInfo":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;
    iget-object v4, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4, v10, v11}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mgetFreeFallDetectionTime(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;J)J

    move-result-wide v16

    move-object v4, v8

    move-wide v5, v10

    move v7, v12

    move-object v15, v8

    .end local v8    # "dumpInfo":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;
    .local v15, "dumpInfo":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;
    move-wide/from16 v8, v16

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->setFreeFallDetectionData(JIJ)V

    .line 561
    iget-object v4, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmDumpInfoHistory(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;->addLast(Ljava/lang/Object;)V

    .line 562
    const-wide/16 v4, 0x32

    cmp-long v4, v10, v4

    if-ltz v4, :cond_147

    .line 563
    iget-object v4, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const/4 v5, -0x1

    invoke-static {v4, v10, v11, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mwriteFreeFallLoggingData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;JI)V

    .line 565
    :cond_147
    iget-object v4, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_15a

    .line 566
    iget-object v4, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 569
    :cond_15a
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 570
    .local v3, "sales_code":Ljava/lang/String;
    const-string v4, "SKC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17f

    const-string v4, "KTC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17f

    const-string v4, "LUC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_179

    goto :goto_17f

    .line 580
    :cond_179
    const-string v4, "Sales code is wrong!!"

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b2

    .line 572
    :cond_17f
    :goto_17f
    iget-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetFREE_FALL_HEIGHT_THRESHOLD(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)J

    move-result-wide v4

    cmp-long v2, v10, v4

    if-ltz v2, :cond_1b2

    .line 573
    const-string v2, ""

    .line 574
    .local v2, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "FF_H_EMR"

    invoke-static {v5, v7, v6, v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 576
    iget-object v4, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const-string v5, "FALL"

    const-string v6, "ph"

    const/4 v7, 0x0

    invoke-static {v4, v5, v2, v7, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$msendHWParamServer(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 583
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "sales_code":Ljava/lang/String;
    .end local v15    # "dumpInfo":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;
    :cond_1b2
    :goto_1b2
    return-void
.end method
