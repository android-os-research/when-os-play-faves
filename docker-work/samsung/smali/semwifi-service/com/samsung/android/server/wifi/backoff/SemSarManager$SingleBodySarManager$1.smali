.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;
.super Ljava/lang/Object;
.source "SemSarManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;)V
    .registers 2

    .line 978
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

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

    if-eqz p1, :cond_100

    .line 980
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_100

    .line 981
    invoke-static {}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$sfgetDBG()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SemWifiBackOff.Sar"

    if-eqz v0, :cond_3c

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : mGripSensorListener1 : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    iget v4, v4, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->mGripSensorChannel:I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_3c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->checkAndSetSensorState(Landroid/hardware/SensorEvent;)V

    .line 986
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    iget v3, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mSensorState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4e

    const-string p0, "return because mSensorState != SENSOR_STATE_NORMAL"

    .line 987
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 991
    :cond_4e
    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    if-eqz v3, :cond_cf

    iget-object v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_cf

    .line 996
    :cond_5b
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    iget v3, v3, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->mGripSensorChannel:I

    aget v0, v0, v3

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_95

    .line 997
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : enable powerbackoff1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 999
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->checkAndSetBackoff(Z)V

    .line 1000
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    goto :goto_100

    .line 1001
    :cond_95
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    iget v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->mGripSensorChannel:I

    aget p1, p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_100

    .line 1002
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : disable powerbackoff1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 1004
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->checkAndSetBackoff(Z)V

    .line 1005
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    goto :goto_100

    .line 992
    :cond_cf
    :goto_cf
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : mIsGripSensorMonitorEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsRfTestMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_100
    :goto_100
    return-void
.end method
