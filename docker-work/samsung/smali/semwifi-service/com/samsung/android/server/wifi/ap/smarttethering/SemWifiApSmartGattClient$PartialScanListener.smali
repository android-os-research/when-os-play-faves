.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;
.super Ljava/lang/Object;
.source "SemWifiApSmartGattClient.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PartialScanListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 8

    .line 283
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "scanner failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result p1

    const-wide/16 v0, 0x32

    const-string v2, ":\tscanner failed "

    const-string v3, " tryingToRetry : "

    if-eqz p1, :cond_9b

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result p1

    const/4 v4, 0x4

    if-le p1, v4, :cond_9b

    .line 285
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",starting partial scan tryingToRetry : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_8e

    .line 288
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    const/16 p2, 0x14

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 290
    :cond_8e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputtryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    goto/16 :goto_126

    .line 291
    :cond_9b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result p1

    if-eqz p1, :cond_126

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result p1

    if-lez p1, :cond_126

    .line 292
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanner failed and try to do full scan"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",starting full scan tryingToRetry : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 294
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_11b

    .line 295
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    const/16 p2, 0x17

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 297
    :cond_11b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputtryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    :cond_126
    :goto_126
    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .registers 2

    return-void
.end method

.method public onPeriodChanged(I)V
    .registers 2

    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .registers 16

    const-string v0, ",i.networkId:"

    const-string v1, "\""

    if-nez p1, :cond_10

    .line 305
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "scanDatas null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 310
    :cond_10
    array-length v2, p1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    .line 311
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Found more than 1 batch of scan results, Failing..."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 314
    :cond_1e
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "onResults"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\tonResults"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result v2

    const/16 v4, 0x16

    if-eqz v2, :cond_398

    .line 317
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    move-result-object v2

    const-string v5, "wifi"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 318
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ScanResults received, mwaitingToConnect:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "JP"

    .line 321
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_e4

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmDelayStartFrom(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_e4

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmDelayStartFrom(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 323
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ScanResults received, tGap:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " for Japan"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, 0x1388

    cmp-long v5, v7, v9

    if-lez v5, :cond_d9

    .line 325
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    const-wide/16 v7, -0x1

    invoke-static {v5, v7, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmDelayStartFrom(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;J)V

    .line 326
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ScanResults received, keep going connection process for Japan"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    .line 329
    :cond_d9
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ScanResults received, skip this scan results and wait more for Japan"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto :goto_e5

    :cond_e4
    :goto_e4
    move v5, v3

    :goto_e5
    if-eqz v5, :cond_268

    .line 335
    :try_start_e7
    aget-object p1, p1, v6

    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object p1

    array-length v5, p1

    move v7, v6

    :goto_ef
    if-ge v7, v5, :cond_268

    aget-object v8, p1, v7

    .line 336
    iget-object v8, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 337
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_258

    .line 338
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    .line 339
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_268

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 340
    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    .line 341
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    .line 342
    iget-object v9, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    .line 343
    iget-object v10, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    .line 344
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isOwe"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",isOpen"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",wpa2_isSecure="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",wpa3_isSecure="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v11, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    if-nez v11, :cond_17a

    if-eqz v10, :cond_17a

    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v10

    if-eq v10, v12, :cond_1b0

    :cond_17a
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_18c

    if-eqz v9, :cond_18c

    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v9

    if-ne v9, v12, :cond_1b0

    :cond_18c
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_19e

    if-eqz v7, :cond_19e

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v7

    if-eqz v7, :cond_1b0

    :cond_19e
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10f

    if-eqz v8, :cond_10f

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v7

    if-ne v7, v3, :cond_10f

    .line 346
    :cond_1b0
    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_10f

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10f

    .line 347
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 348
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmMhsFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 349
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 350
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scan resullts Connecting to MHS:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\tScan resullts Connecting to MHS:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 352
    iget p1, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 353
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mgetSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reconnect"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->reconnect()Z
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_257} :catch_25c

    goto :goto_268

    :cond_258
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_ef

    :catch_25c
    move-exception p1

    .line 365
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_268
    :goto_268
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result p1

    const-wide/16 v0, 0x32

    const-string v2, ":\tScanResults doesn\'t have "

    const-string v5, " tryingToRetry : "

    if-eqz p1, :cond_2fb

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result p1

    const/4 v6, 0x4

    if-le p1, v6, :cond_2fb

    .line 370
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScanResults doesn\'t have "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",starting partial scan tryingToRetry : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_2ef

    .line 373
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    const/16 v2, 0x14

    invoke-virtual {p1, v2, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 375
    :cond_2ef
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result p1

    sub-int/2addr p1, v3

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputtryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    goto/16 :goto_3a9

    .line 376
    :cond_2fb
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result p1

    if-eqz p1, :cond_386

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result p1

    if-lez p1, :cond_386

    .line 377
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScanResults doesn\'t have So full scan"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",starting full scan tryingToRetry : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 379
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_37b

    .line 380
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    const/16 v2, 0x17

    invoke-virtual {p1, v2, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 382
    :cond_37b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result p1

    sub-int/2addr p1, v3

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputtryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    goto :goto_3a9

    .line 384
    :cond_386
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_3a9

    .line 385
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    goto :goto_3a9

    .line 389
    :cond_398
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_3a9

    .line 390
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    :cond_3a9
    :goto_3a9
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .line 277
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Partial scan success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\tPartial scan success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method
