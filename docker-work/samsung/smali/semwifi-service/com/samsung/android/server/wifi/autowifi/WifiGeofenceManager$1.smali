.class Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiGeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;Landroid/util/LocalLog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;


# direct methods
.method public static synthetic $r8$lambda$PM8HCPYc0l8QtTVQ_adzpgrDFRI(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->lambda$onReceive$0()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$mstartMonitoring(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "AutoWifi.Geofence"

    const-string p2, "sec_location is ready"

    .line 108
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    const-string p2, "sec_location is ready, syncWithSLocationDb"

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    .line 111
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    const-string v0, "sec_location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/location/SemLocationManager;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fputmSemLocationManager(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Lcom/samsung/android/location/SemLocationManager;)V

    .line 113
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 114
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/util/SemWifiHandler;->post(Ljava/lang/Runnable;)Z

    :cond_3d
    return-void
.end method
