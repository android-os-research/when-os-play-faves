.class Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;
.super Ljava/lang/Object;
.source "WifiGeofenceManager.java"

# interfaces
.implements Lcom/samsung/android/location/SemLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;


# direct methods
.method public static synthetic $r8$lambda$jO1ArN05ihtk1Iq35pYF5VJBSus(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->lambda$onLocationChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V
    .registers 2

    .line 619
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLocationChanged$0()V
    .registers 3

    .line 636
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$mupdateNetworkLocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 637
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->stopMeasuringLocation()V

    :cond_e
    return-void
.end method


# virtual methods
.method public onLocationAvailable([Landroid/location/Location;)V
    .registers 2

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;Landroid/location/Address;)V
    .registers 4

    .line 626
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmLastMeasurement(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    move-result p2

    const-string v0, "AutoWifi.Geofence"

    if-nez p2, :cond_14

    const-string p0, "ignored, not running state"

    .line 627
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    if-nez p1, :cond_1c

    const-string p0, "measure completed but location is null"

    .line 631
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 634
    :cond_1c
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmLastMeasurement(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fputlocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Landroid/location/Location;)V

    .line 635
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/util/SemWifiHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
