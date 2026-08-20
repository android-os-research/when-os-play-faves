.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;
.super Ljava/lang/Object;
.source "SemSarManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;)V
    .registers 2

    .line 846
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;

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

    if-eqz p1, :cond_dc

    .line 848
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_dc

    .line 849
    invoke-static {}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$sfgetDBG()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SemWifiBackOff.Sar"

    if-eqz v0, :cond_30

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : mGta4XLSarGripSensorListener1 : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->checkAndSetSensorState(Landroid/hardware/SensorEvent;)V

    .line 853
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;

    iget v3, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mSensorState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_42

    const-string p0, "return because mSensorState != SENSOR_STATE_NORMAL"

    .line 854
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 858
    :cond_42
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    if-nez v0, :cond_61

    .line 859
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : mIsGripSensorMonitorEnabled is false"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 862
    :cond_61
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_8d

    .line 863
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : gripped grip sensor1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->-$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;Z)V

    goto :goto_b8

    .line 865
    :cond_8d
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_b8

    .line 866
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : ungripped grip sensor1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->-$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;Z)V

    .line 870
    :cond_b8
    :goto_b8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->-$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;)Z

    move-result p1

    if-nez p1, :cond_d3

    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->-$$Nest$fgetmIsGripping2(Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;)Z

    move-result p1

    if-eqz p1, :cond_c9

    goto :goto_d3

    .line 875
    :cond_c9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mBackoffEnabled:Z

    if-eqz p1, :cond_dc

    .line 876
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->checkAndTriggerBackoffRoutine(Z)V

    goto :goto_dc

    .line 871
    :cond_d3
    :goto_d3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mBackoffEnabled:Z

    if-nez p1, :cond_dc

    .line 872
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->checkAndTriggerBackoffRoutine(Z)V

    :cond_dc
    :goto_dc
    return-void
.end method
