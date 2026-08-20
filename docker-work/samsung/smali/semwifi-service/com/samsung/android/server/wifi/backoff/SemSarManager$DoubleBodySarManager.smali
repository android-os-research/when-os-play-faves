.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;
.super Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DoubleBodySarManager"
.end annotation


# instance fields
.field private final mDoubleBodySarGripSensor1:Landroid/hardware/Sensor;

.field private final mDoubleBodySarGripSensor2:Landroid/hardware/Sensor;

.field mDoubleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

.field mDoubleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

.field mGripSensorChannel1:I

.field mGripSensorChannel2:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V
    .registers 8

    .line 1058
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 1059
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    .line 1115
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mDoubleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 1147
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager$2;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mDoubleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 1060
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetBODY_SAR_SEPARATE_ANT_TYPE(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Ljava/lang/String;

    move-result-object p2

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : SEC_PRODUCT_FEATURE_WLAN_CONFIG_SEPARATE_ANT_BACKOFF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " "

    .line 1062
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1063
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    const-string v2, "0x"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mDoubleBodySarGripSensor1:Landroid/hardware/Sensor;

    const/4 v0, 0x1

    .line 1064
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mGripSensorChannel1:I

    .line 1065
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mDoubleBodySarGripSensor2:Landroid/hardware/Sensor;

    const/4 p1, 0x3

    .line 1066
    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mGripSensorChannel2:I

    return-void
.end method


# virtual methods
.method public checkAndSetBackoff(Z)V
    .registers 4

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : checkAndSetBackoff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_29

    const/4 p1, 0x2

    .line 1092
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(II)V

    .line 1093
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(II)V

    goto :goto_2f

    .line 1095
    :cond_29
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(II)V

    .line 1096
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(II)V

    :goto_2f
    return-void
.end method

.method public checkAndSetListener(Z)V
    .registers 5

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : enable sensor monitoring : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3b

    .line 1105
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mDoubleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mDoubleBodySarGripSensor1:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1107
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mDoubleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mDoubleBodySarGripSensor2:Landroid/hardware/Sensor;

    invoke-virtual {p1, v0, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_51

    .line 1110
    :cond_3b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mDoubleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1111
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mDoubleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_51
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "DoubleBodySarManager"

    return-object p0
.end method

.method public updateWifiState(Landroid/content/Context;I)V
    .registers 4

    .line 1076
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->updateWifiState(Landroid/content/Context;I)V

    .line 1077
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->mDoubleBodySarGripSensor1:Landroid/hardware/Sensor;

    const-string p2, "SemWifiBackOff.Sar"

    if-nez p1, :cond_22

    .line 1078
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : mGripSensor1 == null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1081
    :cond_22
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    if-ne p1, v0, :cond_41

    .line 1082
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : mIsGripSensorMonitorPrevEnabled == enable"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1085
    :cond_41
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;->checkAndSetListener(Z)V

    return-void
.end method
