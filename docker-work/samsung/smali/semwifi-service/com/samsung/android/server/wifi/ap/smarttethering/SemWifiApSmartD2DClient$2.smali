.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$2;
.super Landroid/database/ContentObserver;
.source "SemWifiApSmartD2DClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;Landroid/os/Handler;)V
    .registers 3

    .line 401
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 403
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetisAdvRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 404
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mWifiApSmartDeviceNameObserver"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\tmWifiApSmartDeviceNameObserver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 406
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 407
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 408
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    move-result-object p0

    const/4 p1, 0x1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4d
    return-void
.end method
