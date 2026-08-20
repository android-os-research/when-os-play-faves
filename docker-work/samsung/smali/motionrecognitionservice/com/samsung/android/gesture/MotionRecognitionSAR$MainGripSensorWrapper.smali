.class Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;
.super Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainGripSensorWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V
    .registers 4
    .param p2, "s"    # Landroid/hardware/Sensor;
    .param p3, "sarDevice"    # Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 1135
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 1136
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 1137
    return-void
.end method


# virtual methods
.method public onHeadSetStatusChanged(I)V
    .registers 6
    .param p1, "state"    # I

    .line 1160
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mVersion:I

    const-string v1, "MotionRecognitionService"

    const/16 v2, 0x200

    if-eq v0, v2, :cond_26

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mVersion:I

    const/16 v2, 0x600

    if-ne v0, v2, :cond_f

    goto :goto_26

    .line 1174
    :cond_f
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mVersion:I

    and-int/lit8 v0, v0, 0xe

    if-eqz v0, :cond_60

    .line 1175
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mIndex:I

    if-nez v0, :cond_60

    .line 1176
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    const-string v2, "/sys/class/sensors/grip_sensor/grip_earjack"

    invoke-static {v0, v2, p1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$mwriteSysfs(Lcom/samsung/android/gesture/MotionRecognitionSAR;Ljava/lang/String;I)V

    .line 1177
    const-string v0, "[EARJACK] Write earjack state to sys node for main"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 1161
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    const/4 v3, 0x1

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v3

    if-nez v0, :cond_3a

    .line 1162
    const-string v0, "[EARJACK] Before receiving the SAR request for Main. Return."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    return-void

    .line 1165
    :cond_3a
    if-ne p1, v3, :cond_4f

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mSensorEnabled:Z

    if-eqz v0, :cond_4f

    .line 1166
    const-string v0, "[EARJACK] connected - Grip disabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    .line 1169
    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    .line 1170
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->disableSensor()V

    goto :goto_60

    .line 1171
    :cond_4f
    if-nez p1, :cond_60

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v2

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v3

    if-eqz v0, :cond_60

    .line 1172
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->enableSensor()V

    .line 1180
    :cond_60
    :goto_60
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1199
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 1200
    :cond_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x10018

    if-eq v0, v1, :cond_11

    .line 1201
    return-void

    .line 1204
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmIsKoreaPhoneType(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/high16 v3, 0x43960000    # 300.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_2f

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_54

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_54

    .line 1205
    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v5

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v4

    if-eqz v0, :cond_54

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v0, v0, v6

    const/4 v7, 0x0

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_54

    .line 1206
    invoke-virtual {p0, v5, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    .line 1207
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    .line 1208
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setLeftRightHand(I)V

    .line 1209
    return-void

    .line 1212
    :cond_54
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v5

    const/high16 v6, 0x40a00000    # 5.0f

    const/16 v7, 0x12c

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x5

    if-eqz v0, :cond_bf

    .line 1213
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    cmpl-float v0, v0, v3

    if-nez v0, :cond_6d

    .line 1214
    invoke-virtual {p0, v5, v7}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    goto :goto_9c

    .line 1215
    :cond_6d
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    cmpl-float v0, v0, v8

    if-nez v0, :cond_84

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    cmpl-float v0, v0, v6

    if-nez v0, :cond_84

    .line 1216
    invoke-virtual {p0, v5, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    .line 1217
    invoke-virtual {p0, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    goto :goto_9c

    .line 1219
    :cond_84
    invoke-virtual {p0, v5, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    .line 1220
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-int v0, v0

    if-nez v0, :cond_92

    invoke-virtual {p0, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setBackOff(I)V

    goto :goto_9c

    .line 1221
    :cond_92
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-int v0, v0

    if-ne v0, v9, :cond_9c

    invoke-virtual {p0, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    .line 1224
    :cond_9c
    :goto_9c
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-int v0, v0

    const-wide v10, 0x200000000L

    if-eqz v0, :cond_bc

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-int v0, v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b1

    goto :goto_bc

    .line 1226
    :cond_b1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-int v0, v0

    if-ne v0, v9, :cond_bf

    .line 1227
    invoke-virtual {p0, v10, v11, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setTunerGrip(JZ)V

    goto :goto_bf

    .line 1225
    :cond_bc
    :goto_bc
    invoke-virtual {p0, v10, v11, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setTunerGrip(JZ)V

    .line 1230
    :cond_bf
    :goto_bf
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v4

    if-eqz v0, :cond_120

    .line 1232
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    cmpl-float v0, v0, v3

    if-nez v0, :cond_d1

    .line 1233
    invoke-virtual {p0, v4, v7}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    goto :goto_100

    .line 1234
    :cond_d1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    cmpl-float v0, v0, v8

    if-nez v0, :cond_e8

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    cmpl-float v0, v0, v6

    if-nez v0, :cond_e8

    .line 1235
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    .line 1236
    invoke-virtual {p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    goto :goto_100

    .line 1238
    :cond_e8
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    .line 1239
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    float-to-int v0, v0

    if-nez v0, :cond_f6

    invoke-virtual {p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setBackOff(I)V

    goto :goto_100

    .line 1240
    :cond_f6
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    float-to-int v0, v0

    if-ne v0, v9, :cond_100

    invoke-virtual {p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    .line 1243
    :cond_100
    :goto_100
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v9

    const/high16 v1, 0x42ca0000    # 101.0f

    cmpl-float v0, v0, v1

    const-wide v1, 0x400000000L

    if-nez v0, :cond_113

    .line 1244
    invoke-virtual {p0, v1, v2, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setTunerGrip(JZ)V

    goto :goto_120

    .line 1245
    :cond_113
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v9

    const/high16 v3, 0x42cc0000    # 102.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_120

    .line 1246
    invoke-virtual {p0, v1, v2, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setTunerGrip(JZ)V

    .line 1249
    :cond_120
    :goto_120
    return-void
.end method

.method public onSimChanged()V
    .registers 5

    .line 1184
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mIndex:I

    if-eqz v0, :cond_5

    return-void

    .line 1185
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    const-string v1, "MotionRecognitionService"

    if-nez v0, :cond_11

    .line 1186
    const-string v0, "[SAR] GripSensor is null. "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    return-void

    .line 1189
    :cond_11
    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 1190
    .local v0, "data":[F
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    .line 1191
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    const/high16 v3, 0x10000000

    invoke-static {v2, v3, v0}, Landroid/hardware/SensorAdditionalInfo;->createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v2

    .line 1192
    .local v2, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 1193
    const-string v3, "[SAR] injectSensorData failed "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_32
    return-void
.end method

.method public onTAStatusChanged(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 1141
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mVersion:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mVersion:I

    const/16 v2, 0x200

    if-ne v0, v2, :cond_7c

    .line 1142
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    const-string v3, "MotionRecognitionService"

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v1

    if-nez v0, :cond_33

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TA] Before receiving the SAR request for Return : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    return-void

    .line 1146
    :cond_33
    if-eqz p1, :cond_5b

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mSensorEnabled:Z

    if-eqz v0, :cond_5b

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TA] connected -  disabled : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    .line 1149
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    .line 1150
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->disableSensor()V

    goto :goto_7c

    .line 1151
    :cond_5b
    if-nez p1, :cond_7c

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_7c

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TA] disconnected -  enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->enableSensor()V

    .line 1156
    :cond_7c
    :goto_7c
    return-void
.end method
