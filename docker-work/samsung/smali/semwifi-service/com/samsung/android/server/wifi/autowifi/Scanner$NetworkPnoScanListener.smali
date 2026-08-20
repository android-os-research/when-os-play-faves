.class Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$PnoScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkPnoScanListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/Scanner;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/autowifi/Scanner;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;->this$0:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/autowifi/Scanner;Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;-><init>(Lcom/samsung/android/server/wifi/autowifi/Scanner;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

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

.method public onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;->this$0:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/autowifi/Scanner;)Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;->this$0:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/autowifi/Scanner;)Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->sendMessage(Landroid/os/Message;)Z

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
