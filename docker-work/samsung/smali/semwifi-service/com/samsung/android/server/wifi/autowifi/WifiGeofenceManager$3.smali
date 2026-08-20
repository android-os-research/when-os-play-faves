.class Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiGeofenceManager.java"


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
.method public static synthetic $r8$lambda$0-5OlKb8Xo0Tvrhwl_oPcATcR8U(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3;->lambda$onReceive$0()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V
    .registers 2

    .line 644
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .registers 3

    .line 658
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$mupdateNetworkLocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 659
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->stopMeasuringLocation()V

    :cond_e
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 647
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmLastMeasurement(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    move-result p1

    const-string v0, "AutoWifi.Geofence"

    if-nez p1, :cond_14

    const-string p0, "ignored, not running state"

    .line 648
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    const-string p1, "currentlocation"

    .line 651
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    if-nez p1, :cond_24

    const-string p0, "measure completed but location is null"

    .line 653
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 656
    :cond_24
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmLastMeasurement(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fputlocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Landroid/location/Location;)V

    .line 657
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/util/SemWifiHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
