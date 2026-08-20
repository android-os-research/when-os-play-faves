.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;
.super Ljava/lang/Object;
.source "SemSarManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;)V
    .registers 2

    .line 1240
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    if-eqz p1, :cond_11d

    .line 1242
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_11d

    .line 1244
    invoke-static {}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "SemWifiBackOff.Sar"

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : mGripSensorListener2 : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->checkAndSetSensorState(Landroid/hardware/SensorEvent;)V

    .line 1248
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    iget v3, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mSensorState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4a

    const-string p0, "return because mSensorState != SENSOR_STATE_NORMAL"

    .line 1249
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1253
    :cond_4a
    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    if-eqz v3, :cond_ec

    iget-object v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z

    move-result v0

    if-eqz v0, :cond_58

    goto/16 :goto_ec

    .line 1258
    :cond_58
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_84

    .line 1259
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : gripped grip sensor2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->-$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;Z)V

    goto :goto_af

    .line 1261
    :cond_84
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_af

    .line 1262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : ungripped grip sensor2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->-$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;Z)V

    .line 1265
    :cond_af
    :goto_af
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->-$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;)Z

    move-result p1

    if-nez p1, :cond_dc

    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->-$$Nest$fgetmIsGripping2(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;)Z

    move-result p1

    if-nez p1, :cond_dc

    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->-$$Nest$fgetmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;)Z

    move-result p1

    if-eqz p1, :cond_c8

    goto :goto_dc

    .line 1270
    :cond_c8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    iget-boolean v0, p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mBackoffEnabled:Z

    if-eqz v0, :cond_11d

    .line 1271
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 1272
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->checkAndSetBackoff(Z)V

    .line 1273
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    goto :goto_11d

    .line 1266
    :cond_dc
    :goto_dc
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 1267
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->checkAndSetBackoff(Z)V

    .line 1268
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    goto :goto_11d

    .line 1254
    :cond_ec
    :goto_ec
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : mIsGripSensorMonitorEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsRfTestMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11d
    :goto_11d
    return-void
.end method
