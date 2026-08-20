.class Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$1;
.super Ljava/lang/Object;
.source "SemWifiEleGeoMagnetic.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$1;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

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

    .line 183
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1b

    const/4 v1, 0x6

    if-eq v0, v1, :cond_12

    goto :goto_39

    .line 195
    :cond_12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$1;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baroData:F

    goto :goto_39

    :cond_1b
    :goto_1b
    if-ge v2, v1, :cond_39

    .line 192
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$1;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrMagData:[F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2a
    :goto_2a
    if-ge v2, v1, :cond_39

    .line 188
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$1;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrAccData:[F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_39
    :goto_39
    return-void
.end method
