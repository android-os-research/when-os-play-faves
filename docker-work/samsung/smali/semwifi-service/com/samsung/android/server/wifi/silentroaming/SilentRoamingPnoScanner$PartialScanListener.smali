.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;
.super Ljava/lang/Object;
.source "SilentRoamingPnoScanner.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PartialScanListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PartialScanListener onFailure: reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " description: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SilentRoamingPnoScanner"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    move-result-object p0

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->sendMessage(Landroid/os/Message;)Z

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
    .registers 5

    const-string v0, "SilentRoamingPnoScanner"

    if-nez p1, :cond_a

    const-string p0, "Partial scan results is null"

    .line 202
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 206
    :cond_a
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    const-string p0, "Partial Found more than 1 batch of scan results, Failing..."

    .line 207
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    const/4 v0, 0x0

    .line 210
    aget-object p1, p1, v0

    .line 211
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccess()V
    .registers 1

    return-void
.end method
