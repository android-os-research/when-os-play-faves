.class Lcom/samsung/android/server/wifi/util/ScanPool$1;
.super Ljava/lang/Object;
.source "ScanPool.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/util/ScanPool;->startMonitoring(Landroid/net/wifi/WifiScanner;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/util/ScanPool;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/util/ScanPool;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$1;->this$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 164
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$1;->this$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/util/ScanPool;->-$$Nest$mnotifyToClients(Lcom/samsung/android/server/wifi/util/ScanPool;ILjava/lang/String;)V

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
    .registers 7

    const-string v0, "SemWifiScanPool"

    if-nez p1, :cond_a

    const-string p0, "failed to get scan results"

    .line 136
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 139
    :cond_a
    array-length v1, p1

    if-nez v1, :cond_13

    const-string p0, "scan result is empty"

    .line 140
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, v1, :cond_30

    aget-object v4, p1, v3

    .line 145
    invoke-virtual {v4}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v4

    if-nez v4, :cond_26

    goto :goto_2d

    .line 149
    :cond_26
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 151
    :cond_30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$1;->this$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->isFullBandScanResults()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->-$$Nest$mupdateScanResults(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/util/List;Z)V

    return-void
.end method

.method public onSuccess()V
    .registers 1

    return-void
.end method
