.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;
.super Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JdmTripleBodySarManager"
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
.method static bridge synthetic -$$Nest$fgetmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripLteSubSensor:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripping1:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripping2(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripping2:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripLteSubSensor:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripping1:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripping2:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V
    .registers 4

    .line 1189
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 1190
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    const/4 p2, 0x0

    .line 1182
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripping1:Z

    .line 1183
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripping2:Z

    .line 1184
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripLteSubSensor:Z

    .line 1197
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 1240
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$2;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 1284
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager$3;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    .line 1192
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p2

    const v0, 0x10018

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

    .line 1193
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p2

    const v0, 0x10027

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

    .line 1194
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    const p2, 0x10064

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mGripLteSubSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method private updateBackoffModeForTripleAnt()V
    .registers 8

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : update : mIsGripping1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripping1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsGripping2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripping2:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsGripLteSubSensor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripLteSubSensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripping2:Z

    if-eqz v0, :cond_45

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripping1:Z

    if-eqz v2, :cond_45

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripLteSubSensor:Z

    if-eqz v2, :cond_45

    const/4 v0, 0x3

    .line 1337
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(I)V

    goto/16 :goto_b4

    :cond_45
    if-eqz v0, :cond_54

    .line 1338
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripping1:Z

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mIsGripLteSubSensor:Z

    if-eqz v2, :cond_54

    :cond_4f
    const/4 v0, 0x2

    .line 1339
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(I)V

    goto :goto_b4

    :cond_54
    if-eqz v0, :cond_5b

    const/4 v0, 0x1

    .line 1341
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(I)V

    goto :goto_b4

    .line 1344
    :cond_5b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_65
    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    .line 1345
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "JdmProximityHeadSarManager"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_89

    .line 1346
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "JdmReceiverHeadSarManager"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 1347
    :cond_89
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getBackOffState()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_65

    .line 1350
    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : updateBackoffModeForTripleAnt : isHeadSar:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_b0

    .line 1352
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(I)V

    goto :goto_b4

    :cond_b0
    const/4 v0, -0x1

    .line 1355
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(I)V

    :goto_b4
    return-void
.end method


# virtual methods
.method public checkAndSetBackoff(Z)V
    .registers 4

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->getName()Ljava/lang/String;

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

    .line 1364
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->updateBackoffModeForTripleAnt()V

    goto :goto_27

    :cond_23
    const/4 p1, -0x1

    .line 1366
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(I)V

    :goto_27
    return-void
.end method

.method public checkAndSetListener(Z)V
    .registers 5

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->getName()Ljava/lang/String;

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

    .line 1375
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1377
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1379
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mGripLteSubSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v0, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_69

    .line 1382
    :cond_48
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1383
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1384
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_69
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "JdmTripleBodySarManager"

    return-object p0
.end method

.method public updateWifiState(Landroid/content/Context;I)V
    .registers 4

    .line 1390
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->updateWifiState(Landroid/content/Context;I)V

    .line 1392
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

    const-string p2, "SemWifiBackOff.Sar"

    if-nez p1, :cond_f

    const-string p0, "mGripSensor1 == null"

    .line 1393
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1396
    :cond_f
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    if-ne p1, v0, :cond_1b

    const-string p0, "mIsGripSensorMonitorPrevEnabled == enable"

    .line 1397
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1400
    :cond_1b
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;->checkAndSetListener(Z)V

    return-void
.end method
