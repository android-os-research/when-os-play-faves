.class Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;
.super Ljava/lang/Object;
.source "SemStrongRssiRoaming.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkPartialScanListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .registers 2

    .line 434
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 6

    .line 442
    invoke-static {}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Partial scan failed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

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

    .line 449
    invoke-static {}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Partial scan onResults"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_15

    .line 451
    invoke-static {}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Partial scanDatas null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 455
    :cond_15
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    .line 456
    invoke-static {}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Partial Found more than 1 batch of scan results, Failing..."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    const/4 v0, 0x0

    .line 459
    aget-object p1, p1, v0

    .line 460
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object p1

    .line 461
    invoke-static {}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " partial scan results"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSuccess()V
    .registers 2

    .line 437
    invoke-static {}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Partial scan success"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
