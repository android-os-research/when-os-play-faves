.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;
.super Ljava/lang/Object;
.source "SilentRoamingPnoScanner.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$PnoScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PnoScanListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 4

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PnoScanListener onFailure: reason: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " description: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SilentRoamingPnoScanner"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .registers 2

    return-void
.end method

.method public onPeriodChanged(I)V
    .registers 3

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PnoScanListener onPeriodChanged: actual scan period "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SilentRoamingPnoScanner"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .registers 2

    return-void
.end method

.method public onSuccess()V
    .registers 1

    return-void
.end method
