.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$2;
.super Ljava/lang/Object;
.source "SemSarManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;)V
    .registers 2

    .line 1147
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

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

    if-eqz p1, :cond_e4

    .line 1149
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_e4

    .line 1150
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    iget v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mGripSensorChannel2:I

    .line 1151
    invoke-static {}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$sfgetDBG()Z

    move-result v1

    const-string v2, "SemWifiBackOff.Sar"

    if-eqz v1, :cond_3b

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : mGripSensorListener2 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_3b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->checkAndSetSensorState(Landroid/hardware/SensorEvent;)V

    .line 1155
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    iget v3, v1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mSensorState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4d

    const-string p0, "return because mSensorState != SENSOR_STATE_NORMAL"

    .line 1156
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1160
    :cond_4d
    iget-boolean v3, v1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    if-eqz v3, :cond_b3

    iget-object v1, v1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z

    move-result v1

    if-eqz v1, :cond_5a

    goto :goto_b3

    .line 1165
    :cond_5a
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v0

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_87

    .line 1166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : enable powerbackoff2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(II)V

    goto :goto_e4

    .line 1168
    :cond_87
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_e4

    .line 1169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : disable powerbackoff2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(II)V

    goto :goto_e4

    .line 1161
    :cond_b3
    :goto_b3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : mIsGripSensorMonitorEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsRfTestMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$2;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    :goto_e4
    return-void
.end method
