.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;
.super Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "A03sSarManager"
.end annotation


# instance fields
.field private final mA03sGripSensor1:Landroid/hardware/Sensor;

.field mA03sSarGripSensorListener1:Landroid/hardware/SensorEventListener;

.field private mIsGripSensorMonitorEnabled:Z

.field private mIsGripping1:Z

.field private mIsRcvEnabled:Z

.field private mIsReceiverListenerEnabled:Z

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsGripSensorMonitorEnabled(Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsGripSensorMonitorEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsGripping1:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRcvEnabled(Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsRcvEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsGripping1:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V
    .registers 6

    .line 697
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 698
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    const/4 p2, 0x0

    .line 693
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsReceiverListenerEnabled:Z

    .line 694
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsRcvEnabled:Z

    .line 695
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsGripping1:Z

    .line 732
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mA03sSarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 699
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object v0

    const v1, 0x10027

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mA03sGripSensor1:Landroid/hardware/Sensor;

    .line 700
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "wifi_sensor_monitor_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_32

    move p2, v2

    :cond_32
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsGripSensorMonitorEnabled:Z

    .line 701
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create sensor monitor with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsGripSensorMonitorEnabled:Z

    if-eqz p0, :cond_45

    const-string p0, "enabled state"

    goto :goto_47

    :cond_45
    const-string p0, "disabled state"

    :goto_47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiBackOff.Sar"

    .line 701
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkAndSetBackoff(Z)V
    .registers 4

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : checkAndSetBackoff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiBackOff.Sar"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsRcvEnabled:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    const-string p1, "setPowerBackoffMode: 0"

    .line 779
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(I)V

    goto :goto_41

    .line 782
    :cond_2b
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsGripping1:Z

    if-eqz p1, :cond_39

    const-string p1, "setPowerBackoffMode: 1"

    .line 783
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 784
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(I)V

    goto :goto_41

    :cond_39
    const-string p1, "setPowerBackoffEnabled to false"

    .line 786
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffEnabled(Z)V

    :goto_41
    return-void
.end method

.method public checkAndSetListener(Z)V
    .registers 7

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : checkAndSetListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " : mIsGripSensorMonitorPrevEnabled == enable"

    const-string v2, " : mGripSensor1 == null"

    if-eqz p1, :cond_7e

    .line 796
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsReceiverListenerEnabled:Z

    if-nez p1, :cond_37

    .line 797
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mBaseHeadSarReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mBaseHeadSarIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 798
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsReceiverListenerEnabled:Z

    .line 800
    :cond_37
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mA03sGripSensor1:Landroid/hardware/Sensor;

    if-nez p1, :cond_52

    .line 801
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 804
    :cond_52
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    if-ne p1, v2, :cond_6f

    .line 805
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 808
    :cond_6f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mA03sSarGripSensorListener1:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mA03sGripSensor1:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, p0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_d3

    .line 811
    :cond_7e
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsReceiverListenerEnabled:Z

    if-eqz p1, :cond_90

    .line 812
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mBaseHeadSarReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 813
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsReceiverListenerEnabled:Z

    .line 815
    :cond_90
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mA03sGripSensor1:Landroid/hardware/Sensor;

    if-nez p1, :cond_ab

    .line 816
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 819
    :cond_ab
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    if-ne p1, v2, :cond_c8

    .line 820
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 823
    :cond_c8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mA03sSarGripSensorListener1:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_d3
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "A03sSarManager"

    return-object p0
.end method

.method public isGripSensorMonitorEnabled()Z
    .registers 5

    .line 728
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi_sensor_monitor_enable"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_16

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsGripSensorMonitorEnabled:Z

    return v3
.end method

.method public triggerReceiverRoutine(Z)V
    .registers 4

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receiver is set to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsRcvEnabled:Z

    if-ne v0, p1, :cond_1b

    return-void

    .line 711
    :cond_1b
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsRcvEnabled:Z

    if-nez p1, :cond_2f

    .line 712
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->mIsGripping1:Z

    if-eqz p1, :cond_24

    goto :goto_2f

    :cond_24
    const/4 p1, 0x0

    .line 721
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 722
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->checkAndSetBackoff(Z)V

    .line 723
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    goto :goto_41

    .line 713
    :cond_2f
    :goto_2f
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mBackoffEnabled:Z

    const/4 v0, 0x1

    if-nez p1, :cond_37

    .line 714
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 716
    :cond_37
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->checkAndSetBackoff(Z)V

    .line 717
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    if-nez p1, :cond_41

    .line 718
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    :cond_41
    :goto_41
    return-void
.end method

.method public updateWifiState(Landroid/content/Context;I)V
    .registers 3

    .line 829
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->updateWifiState(Landroid/content/Context;I)V

    .line 830
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;->checkAndSetListener(Z)V

    return-void
.end method
