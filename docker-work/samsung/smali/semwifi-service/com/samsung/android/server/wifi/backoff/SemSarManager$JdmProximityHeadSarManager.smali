.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;
.super Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JdmProximityHeadSarManager"
.end annotation


# instance fields
.field mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V
    .registers 3

    .line 1600
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 1601
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    .line 1614
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    return-void
.end method


# virtual methods
.method public checkAndSetBackoff(Z)V
    .registers 9

    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : checkAndSetBackoff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    if-nez v0, :cond_22

    return-void

    :cond_22
    const/4 v0, 0x1

    if-eqz p1, :cond_4d

    .line 1653
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    if-nez p1, :cond_c8

    .line 1654
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : Proximity sensor started at : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffEnabled(Z)V

    goto/16 :goto_c8

    .line 1658
    :cond_4d
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    if-eqz p1, :cond_c8

    .line 1659
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : Proximity sensor stopped at : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :cond_7a
    :goto_7a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    .line 1663
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "JdmProximityHeadSarManager"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7a

    .line 1664
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "JdmReceiverHeadSarManager"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7a

    .line 1665
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getBackOffState()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_7a

    .line 1668
    :cond_a4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : checkAndSetBackoff : isBodySar:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_c5

    .line 1670
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(I)V

    goto :goto_c8

    .line 1673
    :cond_c5
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffEnabled(Z)V

    :cond_c8
    :goto_c8
    return-void
.end method

.method public checkAndSetListener(Z)V
    .registers 6

    const-string v0, "SemWifiBackOff.Sar"

    if-eqz p1, :cond_3d

    .line 1682
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsProximitySensorMonitorEnabled:Z

    if-nez p1, :cond_69

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsRcvEnabled:Z

    if-eqz p1, :cond_69

    .line 1683
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1685
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : Proximity sensor registered at : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1686
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsProximitySensorMonitorEnabled:Z

    goto :goto_69

    .line 1689
    :cond_3d
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsProximitySensorMonitorEnabled:Z

    if-eqz p1, :cond_69

    .line 1690
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1691
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : ProxSensor unregisterListener complete"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1692
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsProximitySensorMonitorEnabled:Z

    .line 1693
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsCloseToProximitySensor:Z

    :cond_69
    :goto_69
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "JdmProximityHeadSarManager"

    return-object p0
.end method

.method public triggerReceiverRoutine(Z)V
    .registers 3

    .line 1606
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->checkAndSetListener(Z)V

    if-eqz p1, :cond_a

    .line 1607
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsCloseToProximitySensor:Z

    if-nez v0, :cond_a

    return-void

    .line 1609
    :cond_a
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 1610
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;->checkAndSetBackoff(Z)V

    .line 1611
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    return-void
.end method
