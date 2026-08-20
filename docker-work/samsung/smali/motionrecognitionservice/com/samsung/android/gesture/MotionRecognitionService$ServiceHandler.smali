.class final Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;
.super Landroid/os/Handler;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1285
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    .line 1286
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1287
    return-void
.end method

.method private checkListener(III)Z
    .registers 8
    .param p1, "event"    # I
    .param p2, "motionSensors"    # I
    .param p3, "motionType"    # I

    .line 1290
    const/4 v0, 0x1

    if-nez p3, :cond_4

    .line 1291
    return v0

    .line 1294
    :cond_4
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p2

    const/4 v2, 0x0

    const-string v3, "MotionRecognitionService"

    if-nez v1, :cond_1e

    .line 1295
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSettings(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSettings;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isSettingMotion(I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1296
    const-string v0, "checkListener : Setting is OFF"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    return v2

    .line 1301
    :cond_1e
    sparse-switch p1, :sswitch_data_38

    .line 1314
    return v0

    .line 1310
    :sswitch_22
    and-int/lit16 v1, p3, 0x400

    if-eqz v1, :cond_31

    .line 1311
    return v0

    .line 1304
    :sswitch_27
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_37

    const/high16 v1, 0x20000

    and-int/2addr v1, p3

    if-eqz v1, :cond_31

    goto :goto_37

    .line 1317
    :cond_31
    const-string v0, "checkListener : return false;"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    return v2

    .line 1306
    :cond_37
    :goto_37
    return v0

    :sswitch_data_38
    .sparse-switch
        0xa -> :sswitch_27
        0x56 -> :sswitch_27
        0x65 -> :sswitch_22
        0x66 -> :sswitch_22
    .end sparse-switch
.end method

.method private injectSensorAdditionalInfoMotion(Landroid/hardware/Sensor;[I)V
    .registers 6
    .param p1, "motionSensor"    # Landroid/hardware/Sensor;
    .param p2, "data"    # [I

    .line 1509
    invoke-static {p1, p2}, Landroid/hardware/SensorAdditionalInfo;->createMotionData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v0

    .line 1511
    .local v0, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1512
    const-string v1, "MotionRecognitionService"

    const-string v2, "injectSensorAdditionalInfo failed "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_17
    return-void
.end method

.method private injectSensorAdditionalInfoSContext(Landroid/hardware/Sensor;[I)V
    .registers 6
    .param p1, "sensorhub"    # Landroid/hardware/Sensor;
    .param p2, "data"    # [I

    .line 1501
    invoke-static {p1, p2}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v0

    .line 1503
    .local v0, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1504
    const-string v1, "MotionRecognitionService"

    const-string v2, "injectSensorAdditionalInfoSContext failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_17
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1323
    if-eqz p1, :cond_350

    .line 1324
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const v2, 0x1009f

    const v3, 0x10032

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v0, :sswitch_data_352

    goto/16 :goto_350

    .line 1481
    :sswitch_14
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1482
    .local v0, "sensorhub":Landroid/hardware/Sensor;
    if-eqz v0, :cond_48

    .line 1483
    new-array v1, v5, [I

    .line 1484
    .local v1, "intData":[I
    aput v4, v1, v6

    .line 1485
    const v2, 0x120049c1

    aput v2, v1, v7

    .line 1487
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call screen foreground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->injectSensorAdditionalInfoSContext(Landroid/hardware/Sensor;[I)V

    .line 1489
    .end local v1    # "intData":[I
    goto/16 :goto_350

    .line 1490
    :cond_48
    const-string v1, "MotionRecognitionService"

    const-string v2, "No Sensor Hub."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    goto/16 :goto_350

    .line 1466
    .end local v0    # "sensorhub":Landroid/hardware/Sensor;
    :sswitch_51
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1467
    .restart local v0    # "sensorhub":Landroid/hardware/Sensor;
    if-eqz v0, :cond_85

    .line 1468
    new-array v1, v5, [I

    .line 1469
    .restart local v1    # "intData":[I
    aput v4, v1, v6

    .line 1470
    const v2, 0x110049c1

    aput v2, v1, v7

    .line 1472
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call screen background: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->injectSensorAdditionalInfoSContext(Landroid/hardware/Sensor;[I)V

    .line 1474
    .end local v1    # "intData":[I
    goto/16 :goto_350

    .line 1475
    :cond_85
    const-string v1, "MotionRecognitionService"

    const-string v2, "No Sensor Hub."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    goto/16 :goto_350

    .line 1451
    .end local v0    # "sensorhub":Landroid/hardware/Sensor;
    :sswitch_8e
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1452
    .restart local v0    # "sensorhub":Landroid/hardware/Sensor;
    if-eqz v0, :cond_ce

    .line 1453
    new-array v1, v1, [I

    .line 1454
    .local v1, "data":[I
    const/16 v2, 0x8

    aput v2, v1, v6

    .line 1455
    const v2, 0x100048c1

    aput v2, v1, v7

    .line 1456
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v5

    .line 1457
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inject RefreshRate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->injectSensorAdditionalInfoSContext(Landroid/hardware/Sensor;[I)V

    .line 1459
    .end local v1    # "data":[I
    goto/16 :goto_350

    .line 1460
    :cond_ce
    const-string v1, "MotionRecognitionService"

    const-string v2, "SensorHub is null. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    goto/16 :goto_350

    .line 1447
    .end local v0    # "sensorhub":Landroid/hardware/Sensor;
    :sswitch_d7
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListener(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1448
    goto/16 :goto_350

    .line 1442
    :sswitch_f2
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListener(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1444
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 1445
    goto/16 :goto_350

    .line 1375
    :sswitch_119
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mstartMotions(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    .line 1377
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmCheckProximityPopup(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/CheckProximitySensor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSARMotion(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSAR;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/CheckProximitySensor;->startPalmSensorCheck(Lcom/samsung/android/gesture/MotionRecognitionSAR;)V

    .line 1378
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmBrightnessHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->startWritingBrightness()V

    .line 1379
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmLightSensorVersion(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_14d

    .line 1380
    const-string v0, "MotionRecognitionService"

    const-string v1, "Support: calibratedLux type sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mregisterCalibratedLuxSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    goto :goto_154

    .line 1383
    :cond_14d
    const-string v0, "MotionRecognitionService"

    const-string v1, "Not Support: calibratedLux type sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :goto_154
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmInputManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/input/InputManager;

    move-result-object v0

    if-nez v0, :cond_350

    .line 1386
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmInputManager(Lcom/samsung/android/gesture/MotionRecognitionService;Landroid/hardware/input/InputManager;)V

    .line 1387
    const-string v0, "MotionRecognitionService"

    const-string v1, "Support: InputService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_350

    .line 1439
    :sswitch_176
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0, v6}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mwritePocketDetectorSysfs(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 1440
    goto/16 :goto_350

    .line 1436
    :sswitch_17d
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0, v7}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mwritePocketDetectorSysfs(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 1437
    goto/16 :goto_350

    .line 1369
    :sswitch_184
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSettings(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->updateFromMotionSystemSettings()V

    .line 1370
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmPalmMotion(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    move-result-object v0

    if-eqz v0, :cond_350

    .line 1371
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmPalmMotion(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->settingOnChanged(Z)V

    goto/16 :goto_350

    .line 1367
    :sswitch_1a0
    goto/16 :goto_350

    .line 1364
    :sswitch_1a2
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$minitializeMotionEngine(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    .line 1365
    goto/16 :goto_350

    .line 1354
    :sswitch_1a9
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorChecker(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    move-result-object v0

    if-eqz v0, :cond_1b8

    .line 1358
    const-string v0, "MotionRecognitionService"

    const-string v1, "HQMService is supported, skip enableTestSensor() function!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_1b8
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmPalmMotion(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    move-result-object v0

    if-eqz v0, :cond_350

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmPalmMotion(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->enablePalmLogging()V

    goto/16 :goto_350

    .line 1350
    :sswitch_1cb
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0, v6}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$monChangedScreenState(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 1351
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$munregisterCalibratedLuxSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    .line 1352
    goto/16 :goto_350

    .line 1344
    :sswitch_1d7
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0, v7}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$monChangedScreenState(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 1345
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmRegisteredPocketDetector(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v0

    if-eqz v0, :cond_350

    .line 1346
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$munregisterPocketDetector(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    goto/16 :goto_350

    .line 1326
    :sswitch_1eb
    const-string v0, "MotionRecognitionService"

    const-string v1, "received message in handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const/4 v0, 0x0

    .line 1329
    .local v0, "motionEvent":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    :try_start_1f3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    :try_end_1f7
    .catch Ljava/lang/ClassCastException; {:try_start_1f3 .. :try_end_1f7} :catch_1f9

    move-object v0, v1

    .line 1332
    goto :goto_214

    .line 1330
    :catch_1f9
    move-exception v1

    .line 1331
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassCastException in handleMessage: msg.obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1333
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_214
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received message in handler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1335
    :try_start_237
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_241
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;

    .line 1336
    .local v3, "l":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    invoke-virtual {v0}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v4

    iget v5, v3, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionSensors:I

    iget v6, v3, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionEvents:I

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->checkListener(III)Z

    move-result v4

    if-eqz v4, :cond_25e

    .line 1337
    invoke-virtual {v3, v0}, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->callback(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V

    .line 1338
    .end local v3    # "l":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    :cond_25e
    goto :goto_241

    .line 1339
    :cond_25f
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmEventPool(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->recycle(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V

    .line 1340
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1341
    monitor-exit v1

    .line 1342
    goto/16 :goto_350

    .line 1341
    :catchall_274
    move-exception v2

    monitor-exit v1
    :try_end_276
    .catchall {:try_start_237 .. :try_end_276} :catchall_274

    throw v2

    .line 1408
    .end local v0    # "motionEvent":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    :sswitch_277
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHasSensorHub(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v0

    if-nez v0, :cond_2c1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_2c1

    .line 1409
    new-array v0, v5, [I

    .line 1410
    .local v0, "data":[I
    aput v4, v0, v6

    .line 1412
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_297

    .line 1413
    const v1, 0xd47c1

    aput v1, v0, v7

    goto :goto_29c

    .line 1415
    :cond_297
    const v1, 0xf47c1

    aput v1, v0, v7

    .line 1417
    :goto_29c
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inject Call State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->injectSensorAdditionalInfoMotion(Landroid/hardware/Sensor;[I)V

    .line 1419
    .end local v0    # "data":[I
    goto/16 :goto_350

    .line 1420
    :cond_2c1
    const-string v0, "MotionRecognitionService"

    const-string v1, "MotionSensor is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    goto/16 :goto_350

    .line 1425
    :sswitch_2ca
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_303

    .line 1426
    new-array v0, v5, [I

    .line 1427
    .restart local v0    # "data":[I
    aput v4, v0, v6

    .line 1428
    const v1, 0x1047c1

    aput v1, v0, v7

    .line 1429
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inject auto rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mgetWindowRotation(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->injectSensorAdditionalInfoMotion(Landroid/hardware/Sensor;[I)V

    .line 1431
    .end local v0    # "data":[I
    goto :goto_350

    .line 1432
    :cond_303
    const-string v0, "MotionRecognitionService"

    const-string v1, "MotionSensor is null. "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    goto :goto_350

    .line 1393
    :sswitch_30b
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHasSensorHub(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v0

    if-nez v0, :cond_350

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_350

    .line 1394
    new-array v0, v5, [I

    .line 1395
    .restart local v0    # "data":[I
    aput v4, v0, v6

    .line 1397
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v7, :cond_329

    .line 1398
    const v1, 0x10047c1

    aput v1, v0, v7

    goto :goto_32d

    .line 1400
    :cond_329
    const/16 v1, 0x47c1

    aput v1, v0, v7

    .line 1402
    :goto_32d
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inject screen on / off : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->injectSensorAdditionalInfoMotion(Landroid/hardware/Sensor;[I)V

    .line 1498
    .end local v0    # "data":[I
    :cond_350
    :goto_350
    return-void

    nop

    :sswitch_data_352
    .sparse-switch
        0x0 -> :sswitch_30b
        0x1 -> :sswitch_30b
        0x5 -> :sswitch_2ca
        0xa -> :sswitch_277
        0xb -> :sswitch_277
        0x55 -> :sswitch_1eb
        0x56 -> :sswitch_1d7
        0x57 -> :sswitch_1cb
        0x58 -> :sswitch_1a9
        0x59 -> :sswitch_1a2
        0x5a -> :sswitch_1a0
        0x5b -> :sswitch_184
        0x5c -> :sswitch_17d
        0x5d -> :sswitch_176
        0x5e -> :sswitch_119
        0x5f -> :sswitch_f2
        0x60 -> :sswitch_d7
        0x62 -> :sswitch_8e
        0x63 -> :sswitch_51
        0x64 -> :sswitch_14
    .end sparse-switch
.end method
