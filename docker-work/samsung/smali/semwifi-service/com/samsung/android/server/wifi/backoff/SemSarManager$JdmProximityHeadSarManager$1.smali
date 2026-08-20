.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;
.super Ljava/lang/Object;
.source "SemSarManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;)V
    .registers 2

    .line 1614
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 5

    .line 1617
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : Processing onAccuracyChanged event at : "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiBackOff.Sar"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .line 1622
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a7

    .line 1623
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget p1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    iget v2, v2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mProximityThreshold:F

    cmpg-float p1, p1, v2

    const/4 v2, 0x1

    if-gez p1, :cond_1c

    move p1, v2

    goto :goto_1d

    :cond_1c
    move p1, v1

    :goto_1d
    iput-boolean p1, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsCloseToProximitySensor:Z

    .line 1624
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : Processing onSensorChanged event at : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " , mIsCloseToProximitySensor : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsCloseToProximitySensor:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiBackOff.Sar"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    iget-boolean p1, p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsCloseToProximitySensor:Z

    if-eqz p1, :cond_7e

    .line 1627
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : Something closed "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 1629
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->checkAndSetBackoff(Z)V

    .line 1630
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    goto :goto_a7

    .line 1632
    :cond_7e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : Nothing closed"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 1634
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->checkAndSetBackoff(Z)V

    .line 1635
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    :cond_a7
    :goto_a7
    return-void
.end method
