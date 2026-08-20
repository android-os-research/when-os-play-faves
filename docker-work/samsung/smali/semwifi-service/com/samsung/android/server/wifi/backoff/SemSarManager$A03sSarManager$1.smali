.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;
.super Ljava/lang/Object;
.source "SemSarManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;)V
    .registers 2

    .line 732
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

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

    if-eqz p1, :cond_106

    .line 734
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_106

    .line 735
    invoke-static {}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "SemWifiBackOff.Sar"

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : mGripSensorListener1 : "

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

    .line 738
    :cond_38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->-$$Nest$fgetmIsGripSensorMonitorEnabled(Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;)Z

    move-result v0

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto/16 :goto_d3

    .line 743
    :cond_4c
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_78

    .line 744
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->-$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;Z)V

    .line 745
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : enable powerbackoff1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 746
    :cond_78
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_a3

    .line 747
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->-$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;Z)V

    .line 748
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : disable powerbackoff1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_a3
    :goto_a3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->-$$Nest$fgetmIsRcvEnabled(Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;)Z

    move-result p1

    if-nez p1, :cond_106

    .line 752
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->-$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;)Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 753
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 754
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->checkAndSetBackoff(Z)V

    .line 755
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    goto :goto_106

    .line 757
    :cond_c3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 758
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->checkAndSetBackoff(Z)V

    .line 759
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    goto :goto_106

    .line 739
    :cond_d3
    :goto_d3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : mIsGripSensorMonitorEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->-$$Nest$fgetmIsGripSensorMonitorEnabled(Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsRfTestMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_106
    :goto_106
    return-void
.end method
