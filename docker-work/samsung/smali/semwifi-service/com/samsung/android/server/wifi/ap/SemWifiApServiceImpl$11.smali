.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$11;
.super Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
.source "SemWifiApServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 2

    .line 2167
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$11;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .registers 4

    .line 2185
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$11;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputmReservation(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    const-string v0, "vendor.wifiap.twt"

    const-string v1, "0"

    .line 2186
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onFailed mReservation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$11;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmReservation(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    invoke-super {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    return-void
.end method

.method public onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .registers 4

    .line 2170
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$11;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputmReservation(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStarted mReservation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$11;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmReservation(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    invoke-super {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    return-void
.end method

.method public onStopped()V
    .registers 3

    .line 2177
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$11;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputmReservation(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    const-string v0, "vendor.wifiap.twt"

    const-string v1, "0"

    .line 2178
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onStopped mReservation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$11;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmReservation(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    invoke-super {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStopped()V

    return-void
.end method
