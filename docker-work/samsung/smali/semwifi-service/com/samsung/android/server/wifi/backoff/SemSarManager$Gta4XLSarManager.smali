.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;
.super Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Gta4XLSarManager"
.end annotation


# instance fields
.field private final mGta4XLGripSensor1:Landroid/hardware/Sensor;

.field private final mGta4XLGripSensor2:Landroid/hardware/Sensor;

.field mGta4XLSarGripSensorListener1:Landroid/hardware/SensorEventListener;

.field mGta4XLSarGripSensorListener2:Landroid/hardware/SensorEventListener;

.field private mIsGripping1:Z

.field private mIsGripping2:Z

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->mIsGripping1:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripping2(Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->mIsGripping2:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->mIsGripping1:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->mIsGripping2:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V
    .registers 4

    .line 840
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 841
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    .line 846
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->mGta4XLSarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 887
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager$2;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->mGta4XLSarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 842
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p2

    const v0, 0x10027

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->mGta4XLGripSensor1:Landroid/hardware/Sensor;

    .line 843
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    const p2, 0x10018

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->mGta4XLGripSensor2:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public checkAndSetBackoff(Z)V
    .registers 4

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : checkAndSetBackoff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffEnabled(Z)V

    return-void
.end method

.method public checkAndSetListener(Z)V
    .registers 5

    if-eqz p1, :cond_1e

    .line 942
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->mGta4XLSarGripSensorListener1:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->mGta4XLGripSensor1:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 944
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->mGta4XLSarGripSensorListener2:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->mGta4XLGripSensor2:Landroid/hardware/Sensor;

    invoke-virtual {p1, v0, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_34

    .line 948
    :cond_1e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->mGta4XLSarGripSensorListener1:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 949
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->mGta4XLSarGripSensorListener2:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_34
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "Gta4XLSarManager"

    return-object p0
.end method

.method public updateWifiState(Landroid/content/Context;I)V
    .registers 4

    .line 955
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->updateWifiState(Landroid/content/Context;I)V

    .line 956
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->mGta4XLGripSensor1:Landroid/hardware/Sensor;

    const-string p2, "SemWifiBackOff.Sar"

    if-nez p1, :cond_22

    .line 957
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : mGripSensor1 == null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 960
    :cond_22
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    if-ne p1, v0, :cond_41

    .line 961
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : mIsGripSensorMonitorPrevEnabled == enable"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 964
    :cond_41
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;->checkAndSetListener(Z)V

    return-void
.end method
