.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$1;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "SemWifiApSmartClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)V
    .registers 2

    .line 716
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartFailure(I)V
    .registers 5

    .line 725
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client Advertise Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)Landroid/util/LocalLog;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Client Advertise Failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 3

    .line 719
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Client Advertise Started."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->-$$Nest$fputisAdvRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;Z)V

    return-void
.end method
