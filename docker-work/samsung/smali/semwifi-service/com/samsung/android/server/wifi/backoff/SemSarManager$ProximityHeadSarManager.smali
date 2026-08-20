.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;
.super Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProximityHeadSarManager"
.end annotation


# instance fields
.field mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V
    .registers 3

    .line 490
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 491
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    .line 504
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    return-void
.end method


# virtual methods
.method public checkAndSetBackoff(Z)V
    .registers 6

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : checkAndSetBackoff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    if-nez v0, :cond_22

    return-void

    :cond_22
    if-eqz p1, :cond_4c

    .line 543
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    if-nez p1, :cond_73

    .line 544
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : Proximity sensor started at : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 545
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffEnabled(Z)V

    goto :goto_73

    .line 548
    :cond_4c
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    if-eqz p1, :cond_73

    .line 549
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : Proximity sensor stopped at : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 550
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffEnabled(Z)V

    :cond_73
    :goto_73
    return-void
.end method

.method public checkAndSetListener(Z)V
    .registers 6

    const-string v0, "SemWifiBackOff.Sar"

    if-eqz p1, :cond_3d

    .line 558
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsProximitySensorMonitorEnabled:Z

    if-nez p1, :cond_69

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsRcvEnabled:Z

    if-eqz p1, :cond_69

    .line 559
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 561
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;->getName()Ljava/lang/String;

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

    .line 562
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsProximitySensorMonitorEnabled:Z

    goto :goto_69

    .line 565
    :cond_3d
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsProximitySensorMonitorEnabled:Z

    if-eqz p1, :cond_69

    .line 566
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 567
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : ProxSensor unregisterListener complete"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 568
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsProximitySensorMonitorEnabled:Z

    .line 569
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsCloseToProximitySensor:Z

    :cond_69
    :goto_69
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "ProximityHeadSarManager"

    return-object p0
.end method

.method public triggerReceiverRoutine(Z)V
    .registers 3

    .line 496
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;->checkAndSetListener(Z)V

    if-eqz p1, :cond_a

    .line 497
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsCloseToProximitySensor:Z

    if-nez v0, :cond_a

    return-void

    .line 499
    :cond_a
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 500
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;->checkAndSetBackoff(Z)V

    .line 501
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    return-void
.end method
