.class Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;
.super Ljava/lang/Object;
.source "SemEasySetupWifiManager.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PartialScanListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V
    .registers 2

    .line 328
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 336
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "SemWifiEasySetupManager"

    const-string p1, "Partial scan failed"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
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
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 345
    :cond_3
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 348
    aget-object p1, p1, v0

    .line 349
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object p1

    .line 350
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " partial scan results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiEasySetupManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    move-result-object p0

    const/4 v0, 0x6

    .line 354
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 353
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 354
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSuccess()V
    .registers 2

    .line 331
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "SemWifiEasySetupManager"

    const-string v0, "Partial scan success"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method
