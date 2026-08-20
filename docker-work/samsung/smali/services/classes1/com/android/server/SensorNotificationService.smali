.class public Lcom/android/server/SensorNotificationService;
.super Lcom/android/server/SystemService;
.source "SensorNotificationService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/LocationListener;


# static fields
.field public static final ATTRIBUTION_TAG:Ljava/lang/String; = "SensorNotificationService"

.field public static final DBG:Z = false

.field public static final KM_IN_M:J = 0x3e8L

.field public static final LOCATION_MIN_DISTANCE:J = 0x186a0L

.field public static final LOCATION_MIN_TIME:J = 0x1b7740L

.field public static final MILLIS_2010_1_1:J = 0x125ea667180L

.field public static final MINUTE_IN_MS:J = 0xea60L

.field public static final PROPERTY_USE_MOCKED_LOCATION:Ljava/lang/String; = "sensor.notification.use_mocked"

.field public static final TAG:Ljava/lang/String; = "SensorNotificationService"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mLocalGeomagneticFieldUpdateTime:J

.field public mLocationManager:Landroid/location/LocationManager;

.field public mMetaSensor:Landroid/hardware/Sensor;

.field public mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "SensorNotificationService"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const-wide/32 v0, -0x1b7740

    .line 59
    iput-wide v0, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J

    .line 63
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final broadcastDynamicSensorChanged()V
    .registers 3

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    iget-object p0, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onBootPhase(I)V
    .registers 8

    const/16 v0, 0x258

    if-ne p1, v0, :cond_22

    .line 72
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x20

    .line 73
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1c

    goto :goto_22

    .line 77
    :cond_1c
    iget-object v1, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_22
    :goto_22
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_44

    .line 84
    iget-object p1, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "location"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_37

    goto :goto_44

    :cond_37
    const-wide/32 v2, 0x1b7740

    const v4, 0x47c35000    # 100000.0f

    const-string/jumbo v1, "passive"

    move-object v5, p0

    .line 89
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 11

    .line 121
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    return-void

    .line 126
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_22

    return-void

    .line 130
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 133
    invoke-virtual {p0}, Lcom/android/server/SensorNotificationService;->useMockedLocation()Z

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->isMock()Z

    move-result v1

    if-eq v0, v1, :cond_89

    const-wide v0, 0x125ea667180L

    cmp-long v0, v5, v0

    if-gez v0, :cond_3a

    goto :goto_89

    .line 137
    :cond_3a
    new-instance v0, Landroid/hardware/GeomagneticField;

    .line 138
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v2, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    .line 139
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    double-to-float v4, v7

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    .line 146
    :try_start_4f
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getFieldStrength()F

    move-result p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    .line 147
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v5

    double-to-float v1, v1

    .line 148
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getInclination()F

    move-result v0

    float-to-double v7, v0

    mul-double/2addr v7, v3

    div-double/2addr v7, v5

    double-to-float v0, v7

    .line 145
    invoke-static {p1, v1, v0}, Landroid/hardware/SensorAdditionalInfo;->createLocalGeomagneticField(FFF)Landroid/hardware/SensorAdditionalInfo;

    move-result-object p1

    if-eqz p1, :cond_89

    .line 150
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J
    :try_end_81
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_81} :catch_82

    goto :goto_89

    :catch_82
    const-string p0, "SensorNotificationService"

    const-string p1, "Invalid local geomagnetic field, ignore."

    .line 154
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    :goto_89
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3

    .line 107
    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_9

    .line 108
    invoke-virtual {p0}, Lcom/android/server/SensorNotificationService;->broadcastDynamicSensorChanged()V

    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 67
    const-class v0, Lcom/android/server/SensorNotificationService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public final useMockedLocation()Z
    .registers 2

    const-string/jumbo p0, "sensor.notification.use_mocked"

    const-string v0, "false"

    .line 168
    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
