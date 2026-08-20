.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;
.super Ljava/lang/Object;
.source "SemSarManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;)V
    .registers 2

    .line 1458
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

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

    if-eqz p1, :cond_fe

    .line 1460
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_fe

    .line 1462
    invoke-static {}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "SemWifiBackOff.Sar"

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->getName()Ljava/lang/String;

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

    .line 1465
    :cond_38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->checkAndSetSensorState(Landroid/hardware/SensorEvent;)V

    .line 1466
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    iget v3, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mSensorState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4a

    const-string p0, "return because mSensorState != SENSOR_STATE_NORMAL"

    .line 1467
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1471
    :cond_4a
    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    if-eqz v3, :cond_cd

    iget-object v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_cd

    .line 1476
    :cond_57
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_92

    .line 1477
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : enable powerbackoff2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->-$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;Z)V

    .line 1479
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 1480
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->checkAndSetBackoff(Z)V

    .line 1481
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    goto :goto_fe

    .line 1482
    :cond_92
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_fe

    .line 1483
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : disable powerbackoff2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->-$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;Z)V

    .line 1485
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 1486
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->checkAndSetBackoff(Z)V

    .line 1487
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    goto :goto_fe

    .line 1472
    :cond_cd
    :goto_cd
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : mIsGripSensorMonitorEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsRfTestMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fe
    :goto_fe
    return-void
.end method
