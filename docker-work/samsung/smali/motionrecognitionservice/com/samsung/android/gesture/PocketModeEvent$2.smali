.class Lcom/samsung/android/gesture/PocketModeEvent$2;
.super Ljava/lang/Object;
.source "PocketModeEvent.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketModeEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketModeEvent;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketModeEvent;

    .line 800
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1012
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 36
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 804
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 805
    .local v3, "curTime":J
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v5, v5

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLuxLightSensoValue(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 807
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    if-gez v0, :cond_28

    .line 808
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Light sensor data is negative number"

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    return-void

    .line 812
    :cond_28
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-ne v0, v7, :cond_5e

    .line 813
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmShowOverlayTime(Lcom/samsung/android/gesture/PocketModeEvent;)J

    move-result-wide v8

    sub-long v8, v3, v8

    const-wide/16 v10, 0x1f4

    cmp-long v0, v8, v10

    if-gez v0, :cond_5e

    .line 814
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Less then 500ms"

    invoke-static {v0, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v5, :cond_5d

    .line 816
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v5, "prox out less then 500ms"

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->handlePocketOut()V

    .line 819
    :cond_5d
    return-void

    .line 823
    :cond_5e
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v8, 0x6

    const/4 v9, -0x1

    const/4 v10, 0x3

    const/4 v11, 0x4

    const/4 v12, 0x5

    if-ne v0, v12, :cond_9b

    .line 824
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-nez v0, :cond_8a

    .line 825
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getLuxRawData()I

    move-result v0

    if-eq v0, v9, :cond_14b

    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/gesture/PocketProximityManager;->getLuxRawData()I

    move-result v9

    invoke-static {v0, v9}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto/16 :goto_14b

    .line 828
    :cond_8a
    iget-object v0, v2, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-lt v0, v12, :cond_14b

    .line 829
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    iget-object v9, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v11

    float-to-int v9, v9

    invoke-static {v0, v9}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto/16 :goto_14b

    .line 833
    :cond_9b
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v10, :cond_e3

    .line 834
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isPocketSensorReceived()Z

    move-result v0

    if-nez v0, :cond_b0

    return-void

    .line 835
    :cond_b0
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-nez v0, :cond_c7

    .line 836
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/gesture/PocketProximityManager;->getVpData()Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/gesture/VirtualPocketData;->getLuxPocket()I

    move-result v9

    invoke-static {v0, v9}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto/16 :goto_14b

    .line 839
    :cond_c7
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v0

    const/16 v9, 0x20

    if-eq v0, v9, :cond_14b

    .line 840
    iget-object v0, v2, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-lt v0, v12, :cond_14b

    .line 841
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    iget-object v9, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v11

    float-to-int v9, v9

    invoke-static {v0, v9}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto :goto_14b

    .line 846
    :cond_e3
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    if-ne v0, v11, :cond_123

    .line 847
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_101

    .line 848
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v5

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLuxSysfs(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 849
    return-void

    .line 851
    :cond_101
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-nez v0, :cond_10f

    .line 852
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuxSysfs(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v9

    invoke-static {v0, v9}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto :goto_14b

    .line 854
    :cond_10f
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v0, v7, :cond_14b

    .line 855
    iget-object v0, v2, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-lt v0, v12, :cond_14b

    .line 856
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    iget-object v9, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v11

    float-to-int v9, v9

    invoke-static {v0, v9}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto :goto_14b

    .line 860
    :cond_123
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v8, :cond_14b

    .line 861
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    const/16 v13, 0xd7

    if-lt v0, v13, :cond_14b

    .line 862
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    const/16 v13, 0x1f4

    if-ge v0, v13, :cond_14b

    .line 863
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v13

    mul-int/2addr v13, v9

    invoke-static {v0, v13}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 868
    :cond_14b
    :goto_14b
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mcheckIrisState(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v0

    if-eqz v0, :cond_154

    return-void

    .line 870
    :cond_154
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetlightTotalCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v9

    add-int/2addr v9, v7

    invoke-static {v0, v9}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputlightTotalCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 872
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->getLightThreshold()I

    move-result v9

    if-gt v0, v9, :cond_17a

    .line 873
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    or-int/2addr v0, v7

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 874
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetvalidLightCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v9

    add-int/2addr v9, v7

    invoke-static {v0, v9}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputvalidLightCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto :goto_18b

    .line 877
    :cond_17a
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/lit8 v0, v0, -0x2

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 878
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0, v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputvalidLightCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 879
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/lit8 v0, v0, -0x9

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 882
    :goto_18b
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmSensorRegisterTime(Lcom/samsung/android/gesture/PocketModeEvent;)J

    move-result-wide v13

    sub-long v13, v3, v13

    .line 883
    .local v13, "diff":J
    const-wide/16 v15, 0x3e8

    .line 885
    .local v15, "dumpDiffTime":J
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v10, :cond_266

    .line 886
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isPocketSensorReceived()Z

    move-result v0

    if-nez v0, :cond_1aa

    return-void

    .line 887
    :cond_1aa
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketLogManager;->getIsDumpWrite()I

    move-result v0

    if-nez v0, :cond_580

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v7

    if-nez v0, :cond_1be

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_580

    .line 888
    :cond_1be
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getVpData()Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v0

    .line 889
    .local v0, "data":Lcom/samsung/android/gesture/VirtualPocketData;
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/gesture/PocketDumpRecogInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v18

    iget-object v8, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v8}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v20

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v21

    iget-object v8, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v8}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v22

    iget-object v8, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v8}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v23

    sget v24, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    iget-object v8, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v8}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mgetLIDState(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v25

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v25}, Lcom/samsung/android/gesture/PocketDumpRecogInfo;-><init>(JIIIIII)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 890
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/gesture/PocketDumpVirtual;

    move-object/from16 v17, v6

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v18

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getState()I

    move-result v20

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getReason()I

    move-result v21

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getBaseProxy()I

    move-result v22

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getCurrentProxy()I

    move-result v23

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getReleaseDiff()I

    move-result v24

    .line 891
    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRelease()I

    move-result v25

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v26

    iget-object v8, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v8}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v27

    iget-object v8, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v8}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetbatteryTemp(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v28

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getHighLuxProxy()I

    move-result v29

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getHighLuxProxyTime()J

    move-result-wide v30

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getOpenCentroid()I

    move-result v32

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getCloseCentroid()I

    move-result v33

    invoke-direct/range {v17 .. v33}, Lcom/samsung/android/gesture/PocketDumpVirtual;-><init>(JIIIIIIIIIIJII)V

    .line 890
    invoke-virtual {v5, v6}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 892
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v5

    if-ne v5, v7, :cond_25d

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketBigDataManager;->addProxCount()V

    .line 893
    :cond_25d
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 894
    .end local v0    # "data":Lcom/samsung/android/gesture/VirtualPocketData;
    goto/16 :goto_580

    .line 895
    :cond_266
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const-wide/16 v17, 0x64

    if-ne v0, v11, :cond_381

    .line 896
    cmp-long v0, v13, v17

    if-ltz v0, :cond_580

    .line 897
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLockProxInt(Lcom/samsung/android/gesture/PocketModeEvent;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 898
    :try_start_280
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    if-nez v0, :cond_2f6

    .line 899
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetsysfsCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    const/16 v11, 0xa

    if-ge v0, v11, :cond_2d3

    .line 900
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v9, "re-check sysfs data"

    invoke-static {v0, v9}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetsysfsCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v9

    add-int/2addr v9, v7

    invoke-static {v0, v9}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputsysfsCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 902
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/gesture/PocketProximityManager;->readProxInt()I

    move-result v9

    invoke-static {v0, v9}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 903
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read Proximity data in register : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f6

    .line 906
    :cond_2d3
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getPhysicalProx()F

    move-result v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_2e5

    .line 907
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto :goto_2f6

    .line 908
    :cond_2e5
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getPhysicalProx()F

    move-result v0

    cmpl-float v0, v0, v9

    if-ltz v0, :cond_2f6

    .line 909
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0, v7}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 912
    :cond_2f6
    :goto_2f6
    monitor-exit v8
    :try_end_2f7
    .catchall {:try_start_280 .. :try_end_2f7} :catchall_37e

    .line 913
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    if-le v0, v7, :cond_307

    .line 914
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    goto :goto_31e

    .line 916
    :cond_307
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    if-ne v0, v7, :cond_317

    .line 917
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateIn()V

    goto :goto_31e

    .line 920
    :cond_317
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 923
    :goto_31e
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketLogManager;->getIsDumpWrite()I

    move-result v0

    if-nez v0, :cond_580

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v7

    if-nez v0, :cond_332

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_580

    .line 924
    :cond_332
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/gesture/PocketDumpRecogInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v21

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v23

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v24

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v25

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v26

    sget v27, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v27}, Lcom/samsung/android/gesture/PocketDumpRecogInfo;-><init>(JIIIII)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 925
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v7, :cond_375

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketBigDataManager;->addProxCount()V

    .line 926
    :cond_375
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    goto/16 :goto_580

    .line 912
    :catchall_37e
    move-exception v0

    :try_start_37f
    monitor-exit v8
    :try_end_380
    .catchall {:try_start_37f .. :try_end_380} :catchall_37e

    throw v0

    .line 929
    :cond_381
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v8, :cond_425

    .line 930
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxLiteState()I

    move-result v0

    if-ne v0, v7, :cond_39d

    .line 931
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateIn()V

    goto :goto_3a4

    .line 934
    :cond_39d
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    .line 936
    :goto_3a4
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketLogManager;->getIsDumpWrite()I

    move-result v0

    if-nez v0, :cond_580

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v7

    if-nez v0, :cond_3b8

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_580

    .line 937
    :cond_3b8
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWriteDumpTime(Lcom/samsung/android/gesture/PocketModeEvent;)J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-eqz v0, :cond_3d0

    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWriteDumpTime(Lcom/samsung/android/gesture/PocketModeEvent;)J

    move-result-wide v5

    sub-long v5, v3, v5

    cmp-long v0, v5, v15

    if-ltz v0, :cond_580

    .line 938
    :cond_3d0
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/gesture/PocketDumpRecogInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v21

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v23

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v24

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v25

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v26

    sget v27, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v27}, Lcom/samsung/android/gesture/PocketDumpRecogInfo;-><init>(JIIIII)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 939
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v7, :cond_413

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketBigDataManager;->addProxCount()V

    .line 940
    :cond_413
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 941
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmWriteDumpTime(Lcom/samsung/android/gesture/PocketModeEvent;J)V

    goto/16 :goto_580

    .line 945
    :cond_425
    cmp-long v0, v13, v17

    if-ltz v0, :cond_580

    .line 946
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v5, :cond_488

    .line 947
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketLogManager;->getIsDumpWrite()I

    move-result v0

    if-nez v0, :cond_580

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_580

    .line 948
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/gesture/PocketDumpRecogInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v21

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v23

    const/16 v24, -0x1

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v25

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v26

    sget v27, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v27}, Lcom/samsung/android/gesture/PocketDumpRecogInfo;-><init>(JIIIII)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 949
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v7, :cond_47f

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketBigDataManager;->addProxCount()V

    .line 950
    :cond_47f
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    goto/16 :goto_580

    .line 952
    :cond_488
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v12, :cond_522

    .line 953
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-nez v0, :cond_4c3

    .line 954
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getPhysicalProx()F

    move-result v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_4b0

    .line 955
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    goto :goto_4c3

    .line 956
    :cond_4b0
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getPhysicalProx()F

    move-result v0

    cmpl-float v0, v0, v9

    if-ltz v0, :cond_4c3

    .line 957
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateIn()V

    .line 959
    :cond_4c3
    :goto_4c3
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketLogManager;->getIsDumpWrite()I

    move-result v0

    if-nez v0, :cond_580

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v7

    if-nez v0, :cond_4d7

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_580

    .line 960
    :cond_4d7
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/gesture/PocketDumpRecogInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v21

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v23

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v24

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v25

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v26

    sget v27, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v27}, Lcom/samsung/android/gesture/PocketDumpRecogInfo;-><init>(JIIIII)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 961
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v7, :cond_51a

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketBigDataManager;->addProxCount()V

    .line 962
    :cond_51a
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    goto :goto_580

    .line 966
    :cond_522
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketLogManager;->getIsDumpWrite()I

    move-result v0

    if-nez v0, :cond_580

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v7

    if-nez v0, :cond_536

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_580

    .line 967
    :cond_536
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/gesture/PocketDumpRecogInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v21

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v23

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v24

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v25

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v26

    sget v27, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v27}, Lcom/samsung/android/gesture/PocketDumpRecogInfo;-><init>(JIIIII)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 968
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v7, :cond_579

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketBigDataManager;->addProxCount()V

    .line 969
    :cond_579
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 974
    :cond_580
    :goto_580
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    const/4 v5, 0x4

    if-ne v0, v5, :cond_595

    .line 975
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v5}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setLightSensitivity(I)V

    .line 977
    :cond_595
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$misOutPocket(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v0

    const/16 v5, 0xb

    if-eqz v0, :cond_5c7

    .line 979
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->handlePocketOut()V

    .line 980
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v0

    if-ne v0, v5, :cond_5c7

    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmIsDualDisplayFolder(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v0

    if-ne v0, v7, :cond_5c7

    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mgetLIDState(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    if-ne v0, v7, :cond_5c7

    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    if-nez v0, :cond_5c7

    .line 981
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->reRegisterSensorForSubDisplay()V

    .line 984
    :cond_5c7
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$misInPocket(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v0

    if-eqz v0, :cond_65c

    .line 986
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v12, :cond_657

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v0

    const/16 v6, 0x33

    if-ne v0, v6, :cond_657

    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmPhysicalProxUseFlag(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v0

    if-nez v0, :cond_657

    .line 987
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpmm()Lcom/samsung/android/gesture/PocketMotionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->isUpsidePosition()Z

    move-result v0

    const/4 v6, 0x7

    if-nez v0, :cond_60a

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpmm()Lcom/samsung/android/gesture/PocketMotionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->isTiltChanged()Z

    move-result v0

    if-nez v0, :cond_60a

    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    if-ne v0, v6, :cond_657

    .line 988
    :cond_60a
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v8, "Motion occur!! - Register Physical Prox"

    invoke-static {v0, v8}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0, v7}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmPhysicalProxUseFlag(Lcom/samsung/android/gesture/PocketModeEvent;Z)V

    .line 991
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->registerPhysicalProximitySensorForA71_5g()V

    .line 993
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_635

    .line 994
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v5, "already send Message : MSG_TYPE_PHYSICAL_PROX_DISABLE"

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_657

    .line 996
    :cond_635
    const/16 v0, 0x1388

    .line 997
    .local v0, "delayTime":I
    iget-object v7, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v7

    if-ne v7, v6, :cond_641

    .line 998
    const/16 v0, 0x3e8

    .line 1000
    :cond_641
    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 1001
    .local v6, "msg":Landroid/os/Message;
    iput v5, v6, Landroid/os/Message;->what:I

    .line 1002
    iget-object v5, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v5}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v5

    int-to-long v7, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1006
    .end local v0    # "delayTime":I
    .end local v6    # "msg":Landroid/os/Message;
    :cond_657
    :goto_657
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->handlePocketIn()V

    .line 1008
    :cond_65c
    return-void
.end method
