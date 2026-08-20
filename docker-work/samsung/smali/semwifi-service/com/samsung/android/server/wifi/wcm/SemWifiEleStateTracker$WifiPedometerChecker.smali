.class Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;
.super Ljava/lang/Object;
.source "SemWifiEleStateTracker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiPedometerChecker"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsEnabled:Z

.field private mListenerEnabled:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStepCountSensor:Landroid/hardware/Sensor;

.field private mTotalStepCount:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsEnabled(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mIsEnabled:Z

    return p0
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Landroid/content/Context;)V
    .registers 5

    .line 921
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 914
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mSensorManager:Landroid/hardware/SensorManager;

    .line 915
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mStepCountSensor:Landroid/hardware/Sensor;

    const/4 p1, 0x0

    .line 916
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mIsEnabled:Z

    .line 917
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mListenerEnabled:Z

    const-wide/16 v0, 0x0

    .line 919
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mTotalStepCount:J

    .line 922
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mContext:Landroid/content/Context;

    const-string p1, "sensor"

    .line 923
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_2e

    const/16 p2, 0x13

    .line 925
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mStepCountSensor:Landroid/hardware/Sensor;

    if-eqz p1, :cond_2e

    const/4 p1, 0x1

    .line 927
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mIsEnabled:Z

    :cond_2e
    return-void
.end method


# virtual methods
.method public getCurrentTotalStepCnt()J
    .registers 4

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pedometer.getCurrentTotalStepCnt() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mTotalStepCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiEleStateTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mTotalStepCount:J

    return-wide v0
.end method

.method public isPedometerEnabled()Z
    .registers 1

    .line 954
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mListenerEnabled:Z

    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4

    .line 939
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_39

    .line 940
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mTotalStepCount:J

    .line 941
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSensorChanged mTotalStepCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mTotalStepCount:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiEleStateTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setPedoRecentStep()V

    .line 943
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->checkNeedRecoverFromEle()V

    .line 944
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->geomagneticEnable()V

    :cond_39
    return-void
.end method

.method public registerPedometer()V
    .registers 4

    .line 966
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mIsEnabled:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mListenerEnabled:Z

    if-nez v0, :cond_1a

    const-string v0, "SemWifiEleStateTracker"

    const-string v1, "registerPedometer"

    .line 967
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mStepCountSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    .line 969
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mListenerEnabled:Z

    :cond_1a
    return-void
.end method

.method public unregisterPedometer()V
    .registers 3

    .line 958
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mIsEnabled:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mListenerEnabled:Z

    if-eqz v0, :cond_19

    const-string v0, "SemWifiEleStateTracker"

    const-string v1, "unregisterPedometer"

    .line 959
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mStepCountSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    .line 961
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mListenerEnabled:Z

    :cond_19
    return-void
.end method
