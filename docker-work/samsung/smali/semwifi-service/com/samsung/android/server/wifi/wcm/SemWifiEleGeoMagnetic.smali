.class public Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;
.super Ljava/lang/Object;
.source "SemWifiEleGeoMagnetic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;,
        Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;
    }
.end annotation


# static fields
.field private static final LOG_SAMPLINGTIME:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SemWifiEleGeoMagnetic"


# instance fields
.field acc:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

.field private accSensor:Landroid/hardware/Sensor;

.field arrAccData:[F

.field arrMagData:[F

.field baro:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

.field baroData:F

.field private baroSensor:Landroid/hardware/Sensor;

.field calc_Feature:Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

.field private eleCallback:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

.field eleCore:Lcom/samsung/android/server/wifi/wcm/EleCore;

.field gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

.field private handler:Landroid/os/Handler;

.field private isAPISupportedFlag:Z

.field private mContext:Landroid/content/Context;

.field private mPrevState:Z

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mag:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

.field private magSensor:Landroid/hardware/Sensor;

.field private thread:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;


# direct methods
.method static bridge synthetic -$$Nest$fgethandler(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mEleDetectNotifier(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->EleDetectNotifier()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 38
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrAccData:[F

    new-array v0, v0, [F

    .line 39
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrMagData:[F

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baroData:F

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->thread:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mPrevState:Z

    .line 49
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    .line 50
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->eleCore:Lcom/samsung/android/server/wifi/wcm/EleCore;

    .line 51
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->calc_Feature:Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

    .line 52
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baro:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->acc:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    .line 54
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mag:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 56
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->accSensor:Landroid/hardware/Sensor;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->magSensor:Landroid/hardware/Sensor;

    .line 58
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baroSensor:Landroid/hardware/Sensor;

    .line 180
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$1;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 67
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mContext:Landroid/content/Context;

    const-string v0, "sensor"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_7e

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->isAPISupportedFlag:Z

    .line 72
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->accSensor:Landroid/hardware/Sensor;

    const-string v0, "SemWifiEleGeoMagnetic"

    if-nez p1, :cond_59

    const-string p1, "GeoMagEleAPI is not supported because accelerometer is not supported"

    .line 74
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->isAPISupportedFlag:Z

    .line 78
    :cond_59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->magSensor:Landroid/hardware/Sensor;

    if-nez p1, :cond_6b

    const-string p1, "GeoMagEleAPI is not supported because magnetometer is not supported"

    .line 80
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->isAPISupportedFlag:Z

    .line 83
    :cond_6b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baroSensor:Landroid/hardware/Sensor;

    if-nez p1, :cond_80

    const-string p1, "GeoMagEleAPI is not supported because barometer is not supported"

    .line 85
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->isAPISupportedFlag:Z

    goto :goto_80

    .line 89
    :cond_7e
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->isAPISupportedFlag:Z

    :cond_80
    :goto_80
    return-void
.end method

.method private EleDetectNotifier()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->acc:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrAccData:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    iput v3, v0, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;->x:F

    const/4 v3, 0x1

    .line 150
    aget v4, v1, v3

    iput v4, v0, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;->y:F

    const/4 v4, 0x2

    .line 151
    aget v1, v1, v4

    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;->z:F

    .line 152
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baro:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    iget v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baroData:F

    iput v5, v1, Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;->data:F

    .line 153
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mag:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrMagData:[F

    aget v7, v6, v2

    iput v7, v5, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->x:F

    .line 154
    aget v3, v6, v3

    iput v3, v5, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->y:F

    .line 155
    aget v3, v6, v4

    iput v3, v5, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->z:F

    .line 157
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    if-eqz v3, :cond_75

    iget-object v3, v3, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    if-eqz v3, :cond_75

    iget-object v4, v3, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroData:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    if-eqz v4, :cond_75

    iget-object v4, v3, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->accData:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    if-eqz v4, :cond_75

    iget-object v4, v3, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magData:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    if-nez v4, :cond_3e

    goto :goto_75

    .line 162
    :cond_3e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->calc_Feature:Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

    invoke-virtual {v2, v3, v0, v1, v5}, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;->AR_Calc_Feature(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->eleCore:Lcom/samsung/android/server/wifi/wcm/EleCore;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/EleCore;->AR_Ele_Detect(Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;)Z

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->eleCallback:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

    if-eqz v1, :cond_60

    if-eqz v0, :cond_59

    .line 167
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mPrevState:Z

    if-nez v2, :cond_60

    invoke-interface {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;->onEleDetect()V

    goto :goto_60

    .line 169
    :cond_59
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mPrevState:Z

    if-eqz v2, :cond_60

    invoke-interface {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;->onEleNotDetect()V

    .line 173
    :cond_60
    :goto_60
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mPrevState:Z

    .line 174
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->calc_Feature:Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;->AR_Calc_UpdateBaroIndex(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;)V

    .line 175
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->calc_Feature:Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;->AR_Calc_UpdateMagIndex(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;)V

    return v0

    :cond_75
    :goto_75
    return v2
.end method

.method private initSensorData()V
    .registers 3

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 143
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrAccData:[F

    new-array v0, v0, [F

    .line 144
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrMagData:[F

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baroData:F

    return-void
.end method


# virtual methods
.method public getAPISupportFlag()Z
    .registers 1

    .line 63
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->isAPISupportedFlag:Z

    return p0
.end method

.method public registerEleDetector(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;)Z
    .registers 7

    const/4 v0, 0x0

    .line 95
    :try_start_1
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    .line 96
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->calc_Feature:Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

    .line 97
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/EleCore;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/EleCore;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->eleCore:Lcom/samsung/android/server/wifi/wcm/EleCore;

    .line 98
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baro:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    .line 99
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->acc:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    .line 100
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mag:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 102
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->gARData:Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;

    if-eqz v1, :cond_94

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->calc_Feature:Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;

    if-eqz v2, :cond_94

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->eleCore:Lcom/samsung/android/server/wifi/wcm/EleCore;

    if-eqz v2, :cond_94

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baro:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    if-eqz v2, :cond_94

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->acc:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    if-eqz v2, :cond_94

    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    if-eqz v1, :cond_94

    iget-object v2, v1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroData:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    if-eqz v2, :cond_94

    iget-object v2, v1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->accData:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    if-eqz v2, :cond_94

    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magData:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    if-nez v1, :cond_50

    goto :goto_94

    :cond_50
    const-string v1, "SemWifiEleGeoMagnetic"

    const-string v2, "Ele detector register"

    .line 108
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->eleCallback:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

    .line 111
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const v4, 0x186a0

    invoke-virtual {p1, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 113
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x2

    .line 114
    invoke-virtual {p1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 113
    invoke-virtual {p1, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 115
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const v4, 0x30d40

    invoke-virtual {p1, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 118
    new-instance p1, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->thread:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    .line 121
    invoke-virtual {p1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 122
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->thread:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_93} :catch_95

    return v2

    :cond_94
    :goto_94
    return v0

    :catch_95
    move-exception p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public unregisterEleDetector()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->thread:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    if-eqz v0, :cond_7

    .line 135
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 137
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->initSensorData()V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->eleCallback:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

    return-void
.end method
