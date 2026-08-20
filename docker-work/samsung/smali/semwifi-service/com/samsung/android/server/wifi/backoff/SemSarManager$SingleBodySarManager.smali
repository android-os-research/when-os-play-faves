.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;
.super Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleBodySarManager"
.end annotation


# instance fields
.field public final mGripSensorChannel:I

.field private final mSingleBodySarGripSensor:Landroid/hardware/Sensor;

.field mSingleBodySarGripSensorListener:Landroid/hardware/SensorEventListener;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;II)V
    .registers 5

    .line 972
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 973
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    .line 978
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->mSingleBodySarGripSensorListener:Landroid/hardware/SensorEventListener;

    .line 974
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->mSingleBodySarGripSensor:Landroid/hardware/Sensor;

    .line 975
    iput p4, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->mGripSensorChannel:I

    return-void
.end method


# virtual methods
.method public checkAndSetBackoff(Z)V
    .registers 4

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : checkAndSetBackoff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffEnabled(Z)V

    return-void
.end method

.method public checkAndSetListener(Z)V
    .registers 4

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : checkAndSetListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2e

    .line 1030
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->mSingleBodySarGripSensorListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->mSingleBodySarGripSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, p0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_39

    .line 1033
    :cond_2e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->mSingleBodySarGripSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_39
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "SingleBodySarManager"

    return-object p0
.end method

.method public updateWifiState(Landroid/content/Context;I)V
    .registers 4

    .line 1039
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->updateWifiState(Landroid/content/Context;I)V

    .line 1040
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->mSingleBodySarGripSensor:Landroid/hardware/Sensor;

    const-string p2, "SemWifiBackOff.Sar"

    if-nez p1, :cond_22

    .line 1041
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : mGripSensor1 == null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1044
    :cond_22
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    if-ne p1, v0, :cond_41

    .line 1045
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : mIsGripSensorMonitorPrevEnabled == enable"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1048
    :cond_41
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;->checkAndSetListener(Z)V

    return-void
.end method
