.class Lcom/samsung/android/gesture/PocketProximityManager$3;
.super Ljava/lang/Object;
.source "PocketProximityManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketProximityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketProximityManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketProximityManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketProximityManager;

    .line 515
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 577
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 18
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 518
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    .line 519
    .local v2, "proxRaw":I
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fputmAlertProxCnt(Lcom/samsung/android/gesture/PocketProximityManager;I)V

    .line 522
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverOpened()Z

    move-result v3

    if-nez v3, :cond_31

    .line 523
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ALERT SENSOR : Cover is closed now"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetisRunningAlertProxSensor(Lcom/samsung/android/gesture/PocketProximityManager;)Z

    move-result v3

    if-ne v3, v5, :cond_30

    .line 525
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    .line 527
    :cond_30
    return-void

    .line 530
    :cond_31
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_206

    .line 531
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    float-to-int v2, v3

    .line 534
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    const/4 v6, 0x4

    const/4 v7, 0x3

    const-string v8, "alert prox : "

    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x6

    const-string v12, ", "

    if-lt v3, v11, :cond_ba

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v3

    if-eq v3, v11, :cond_5c

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x14

    if-nez v3, :cond_ba

    .line 535
    :cond_5c
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v9

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v5

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v4

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v7

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v6

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v10

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_ba
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v3

    if-gt v3, v10, :cond_c3

    .line 543
    return-void

    .line 546
    :cond_c3
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRelease()I

    move-result v3

    .line 548
    .local v3, "proxMin":I
    if-nez v3, :cond_d9

    .line 549
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v3

    .line 550
    :cond_d9
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v13

    const/16 v14, 0x20

    if-ne v13, v14, :cond_106

    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v13

    if-eqz v13, :cond_106

    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v13

    if-le v3, v13, :cond_106

    .line 551
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v3

    goto :goto_132

    .line 552
    :cond_106
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v13

    if-eq v13, v14, :cond_132

    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v13

    const/16 v14, 0x12c

    if-le v13, v14, :cond_132

    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v13

    if-le v3, v13, :cond_132

    .line 553
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v3

    .line 555
    :cond_132
    :goto_132
    if-lt v3, v2, :cond_163

    .line 556
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13, v9}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fputmAlertProxRecogFlag(Lcom/samsung/android/gesture/PocketProximityManager;Z)V

    .line 557
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxOpenCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v14

    add-int/2addr v14, v5

    invoke-static {v13, v14}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fputmAlertProxOpenCnt(Lcom/samsung/android/gesture/PocketProximityManager;I)V

    .line 558
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mAlertProxOpenCnt : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v15}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxOpenCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_163
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxOpenCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v13

    const/16 v14, 0xa

    if-lt v13, v14, :cond_205

    .line 562
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    .line 563
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAlertProxOpen : "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v10, v1, Landroid/hardware/SensorEvent;->values:[F

    array-length v10, v10

    if-lt v10, v11, :cond_1f8

    iget-object v10, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v10}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxOpenCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v10

    if-ne v10, v14, :cond_1f8

    .line 566
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v11, v9

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v5

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v9, v4

    float-to-int v4, v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v8, v7

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v7, v6

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_1f8
    iget-object v4, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetisRunningAlertProxSensor(Lcom/samsung/android/gesture/PocketProximityManager;)Z

    move-result v4

    if-ne v4, v5, :cond_205

    .line 570
    iget-object v4, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    .line 573
    :cond_205
    return-void

    .line 540
    .end local v3    # "proxMin":I
    :cond_206
    return-void
.end method
