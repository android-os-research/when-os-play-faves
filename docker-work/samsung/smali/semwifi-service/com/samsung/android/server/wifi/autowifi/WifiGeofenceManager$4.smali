.class Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;
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
.method public static synthetic $r8$lambda$F_SR-uLEW8Zv4-DuturGXtiOZME(Ljava/lang/String;Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->lambda$onReceive$0(Ljava/lang/String;Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KRHkuJpnDe6--FHXg7OrV-I0370(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;ILcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->lambda$onReceive$1(ILcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PJ5p0lKwodOuUlHxSWfdgGw4hLg(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->lambda$onReceive$2(Landroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V
    .registers 2

    .line 666
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onReceive$0(Ljava/lang/String;Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)Z
    .registers 2

    .line 685
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private synthetic lambda$onReceive$1(ILcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .registers 5

    .line 687
    iput p1, p2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->geopointState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 689
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->addInRangedNetwork(Ljava/lang/String;)V

    goto :goto_1b

    :cond_f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1b

    .line 691
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeFromInRangedNetworks(Ljava/lang/String;)V

    .line 693
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 694
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    move-result-object p0

    .line 695
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object p2

    .line 694
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;->onGeofenceStateChanged(ILjava/lang/String;)V

    :cond_30
    return-void
.end method

.method private synthetic lambda$onReceive$2(Landroid/content/Intent;)V
    .registers 12

    const-string v0, "requestid"

    .line 674
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "transition"

    const/4 v2, 0x0

    .line 675
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 679
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 680
    :try_start_14
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmGeofenceConfigs(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 682
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 683
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_88

    .line 684
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 685
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;I)V

    .line 686
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const-string v1, "AutoWifi.Geofence"

    const-string v3, "%-18s [id : %s][direction : %-7s][result : %-7s]"

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v5, v2

    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 700
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceStateString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v5, v8

    iget-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 701
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceState()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceStateString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    aput-object v7, v5, v9

    .line 699
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    const-string v3, "%-18s [id : %s][direction : %-7s][result : %-7s]"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v0, v4, v6

    .line 704
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceStateString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v8

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 705
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceState()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceStateString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v9

    .line 703
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Ljava/lang/String;)V

    return-void

    :catchall_88
    move-exception p0

    .line 683
    :try_start_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 669
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    move-result-object p1

    if-nez p1, :cond_10

    const-string p0, "AutoWifi.Geofence"

    const-string p1, "geofence state changed but listener is null"

    .line 670
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 673
    :cond_10
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/util/SemWifiHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
