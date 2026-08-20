.class Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread$1;
.super Ljava/lang/Object;
.source "SemWifiEleGeoMagnetic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread$1;->this$1:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread$1;->this$1:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->-$$Nest$mEleDetectNotifier(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)Z

    .line 216
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread$1;->this$1:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrAccData:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrMagData:[F

    aget v1, v0, v1

    aget v1, v0, v2

    aget v0, v0, v3

    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baroData:F
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    return-void
.end method
