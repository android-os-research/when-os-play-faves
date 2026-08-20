.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;
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

    .line 1115
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    if-eqz p1, :cond_f1

    .line 1117
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_f1

    .line 1118
    invoke-static {}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "SemWifiBackOff.Sar"

    if-eqz v0, :cond_3f

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : mGripSensorListener1 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    iget v3, v3, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mGripSensorChannel1:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    iget v2, v2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mGripSensorChannel1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_3f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->checkAndSetSensorState(Landroid/hardware/SensorEvent;)V

    .line 1122
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    iget v2, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mSensorState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_51

    const-string p0, "return because mSensorState != SENSOR_STATE_NORMAL"

    .line 1123
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1127
    :cond_51
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    if-eqz v2, :cond_c0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z

    move-result v0

    if-eqz v0, :cond_5e

    goto :goto_c0

    .line 1132
    :cond_5e
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    iget v2, v2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mGripSensorChannel1:I

    aget v0, v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_8f

    .line 1133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : enable powerbackoff1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(II)V

    goto :goto_f1

    .line 1135
    :cond_8f
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    iget v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mGripSensorChannel1:I

    aget p1, p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_f1

    .line 1136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : disable powerbackoff1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(II)V

    goto :goto_f1

    .line 1128
    :cond_c0
    :goto_c0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : mIsGripSensorMonitorEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsRfTestMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f1
    :goto_f1
    return-void
.end method
