.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;
.super Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TripleBodySarManager"
.end annotation


# instance fields
.field private final mGripLteSubSensor:Landroid/hardware/Sensor;

.field private mIsGripLteSubSensor:Z

.field private mIsGripping1:Z

.field private mIsGripping2:Z

.field mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

.field private final mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

.field private final mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

.field mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

.field mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;


# direct methods
.method static bridge synthetic -$$Nest$fputmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mIsGripLteSubSensor:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mIsGripping1:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mIsGripping2:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V
    .registers 4

    .line 1412
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 1413
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    const/4 p2, 0x0

    .line 1405
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mIsGripping1:Z

    .line 1406
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mIsGripping2:Z

    .line 1407
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mIsGripLteSubSensor:Z

    .line 1420
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 1458
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$2;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 1497
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager$3;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    .line 1415
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p2

    const v0, 0x10018

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

    .line 1416
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p2

    const v0, 0x10027

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

    .line 1417
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    const p2, 0x10064

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mGripLteSubSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method private updateBackoffModeForTripleAnt()V
    .registers 3

    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : update : mIsGripping1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mIsGripping1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsGripping2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mIsGripping2:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsGripLteSubSensor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mIsGripLteSubSensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mIsGripping2:Z

    if-eqz v0, :cond_44

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mIsGripping1:Z

    if-eqz v1, :cond_44

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mIsGripLteSubSensor:Z

    if-eqz v1, :cond_44

    const/4 v0, 0x3

    .line 1545
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(I)V

    goto :goto_5e

    :cond_44
    if-eqz v0, :cond_53

    .line 1546
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mIsGripping1:Z

    if-nez v1, :cond_4e

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mIsGripLteSubSensor:Z

    if-eqz v1, :cond_53

    :cond_4e
    const/4 v0, 0x2

    .line 1547
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(I)V

    goto :goto_5e

    :cond_53
    if-eqz v0, :cond_5a

    const/4 v0, 0x1

    .line 1549
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(I)V

    goto :goto_5e

    :cond_5a
    const/4 v0, -0x1

    .line 1551
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(I)V

    :goto_5e
    return-void
.end method


# virtual methods
.method public checkAndSetBackoff(Z)V
    .registers 4

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : enable sensor monitoring : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_23

    .line 1559
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->updateBackoffModeForTripleAnt()V

    goto :goto_27

    :cond_23
    const/4 p1, -0x1

    .line 1561
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(I)V

    :goto_27
    return-void
.end method

.method public checkAndSetListener(Z)V
    .registers 5

    .line 1567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : enable sensor monitoring : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_48

    .line 1570
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1572
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1574
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mGripLteSubSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v0, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_69

    .line 1577
    :cond_48
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1578
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1579
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_69
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "TripleBodySarManager"

    return-object p0
.end method

.method public updateWifiState(Landroid/content/Context;I)V
    .registers 4

    .line 1585
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->updateWifiState(Landroid/content/Context;I)V

    .line 1587
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

    const-string p2, "SemWifiBackOff.Sar"

    if-nez p1, :cond_f

    const-string p0, "mGripSensor1 == null"

    .line 1588
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1591
    :cond_f
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    if-ne p1, v0, :cond_1b

    const-string p0, "mIsGripSensorMonitorPrevEnabled == enable"

    .line 1592
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1595
    :cond_1b
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;->checkAndSetListener(Z)V

    return-void
.end method
