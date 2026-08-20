.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$15;
.super Ljava/lang/Object;
.source "AutoWifiController.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .registers 2

    .line 1880
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$15;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddAndMonitorGeofence()V
    .registers 1

    .line 1895
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$15;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msendBroadcastBubbleTip(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    return-void
.end method

.method public onGeofenceStateChanged(ILjava/lang/String;)V
    .registers 12

    .line 1883
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$15;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmManualGeofenceControl(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result v0

    const-string v1, "AutoWifiController"

    if-eqz v0, :cond_10

    const-string p0, "skip to update geofence state, manual control mode"

    .line 1884
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1887
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGeofenceStateListener state is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$15;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/16 v1, 0x67

    # invokes: Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->access$500(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    if-eqz p1, :cond_39

    .line 1890
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$15;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/16 v3, 0x67

    const/4 v5, 0x0

    const-wide/16 v7, 0x3e8

    move v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessageDelayed(IIILjava/lang/Object;J)V

    :cond_39
    return-void
.end method
