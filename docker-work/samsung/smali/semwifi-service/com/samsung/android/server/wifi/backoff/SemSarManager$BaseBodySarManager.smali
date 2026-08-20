.class abstract Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;
.super Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseBodySarManager"
.end annotation


# instance fields
.field protected mIsGripSensorMonitorEnabled:Z

.field protected mSensorState:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V
    .registers 5

    .line 631
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 632
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    const/4 p2, 0x1

    .line 629
    iput p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mSensorState:I

    .line 633
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "wifi_sensor_monitor_enable"

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 p2, 0x0

    :goto_1a
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    .line 635
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create sensor monitor with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    if-eqz p0, :cond_2d

    const-string p0, "enabled state"

    goto :goto_2f

    :cond_2d
    const-string p0, "disabled state"

    :goto_2f
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiBackOff.Sar"

    .line 635
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected checkAndSetSensorState(Landroid/hardware/SensorEvent;)V
    .registers 5

    .line 657
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_c

    .line 658
    iput v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mSensorState:I

    return-void

    .line 662
    :cond_c
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->getSensorMode(Landroid/hardware/SensorEvent;)I

    move-result p1

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSensorMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSensorState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mSensorState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemWifiBackOff.Sar"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3f

    .line 665
    iget p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mSensorState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_44

    .line 666
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->checkAndTriggerBackoffRoutine(Z)V

    const/4 p1, 0x2

    .line 667
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mSensorState:I

    goto :goto_44

    :cond_3f
    const/4 v0, 0x5

    if-ne p1, v0, :cond_44

    .line 670
    iput v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mSensorState:I

    :cond_44
    :goto_44
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method protected getSensorMode(Landroid/hardware/SensorEvent;)I
    .registers 7

    .line 675
    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length p0, p0

    const/4 v0, 0x5

    const-string v1, "SemWifiBackOff.Sar"

    const/4 v2, 0x2

    if-gt p0, v2, :cond_21

    .line 676
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event.values.length="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 679
    :cond_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event.values[3],="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", event.values[4]="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p0, p0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5f

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p0, p0, v4

    .line 682
    invoke-static {p0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_5e

    goto :goto_5f

    :cond_5e
    return v4

    :cond_5f
    :goto_5f
    return v0
.end method

.method public isGripSensorMonitorEnabled()Z
    .registers 5

    .line 640
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi_sensor_monitor_enable"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_16

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    return v3
.end method

.method public updateWifiState(Landroid/content/Context;I)V
    .registers 3

    .line 647
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->updateWifiState(Landroid/content/Context;I)V

    .line 648
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->checkAndSetListener(Z)V

    return-void
.end method
