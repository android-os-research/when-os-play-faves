.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;
.super Landroid/os/Handler;
.source "SilentRoamingPnoScanner.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiScanHandler"
.end annotation


# static fields
.field private static final CMD_FULL_SCAN_FAIL_REPORTED:I = 0x2

.field private static final CMD_FULL_SCAN_RESULTS_REPORTED:I = 0x1

.field private static final CMD_PARTIAL_SCAN_FAIL_REPORTED:I = 0x4

.field private static final CMD_PARTIAL_SCAN_RESULTS_REPORTED:I = 0x3

.field private static final CMD_PNO_SCAN_RESULTS_REPORTED:I


# instance fields
.field private mClientListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

.field private final mContext:Landroid/content/Context;

.field private final mPartialScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;

.field private final mPnoScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;


# direct methods
.method static bridge synthetic -$$Nest$misAvailableScanner(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->isAvailableScanner()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mregisterScanListener(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->registerScanListener(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->startPartialScan(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->startPnoScan(Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->stopPnoScan()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    .line 242
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    .line 243
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 244
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mContext:Landroid/content/Context;

    .line 245
    new-instance p2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener-IA;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mPnoScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;

    .line 246
    new-instance p2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener-IA;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mPartialScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;

    return-void
.end method

.method private isAvailableScanner()Z
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private registerScanListener(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

    .line 278
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiScanner;->registerScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V

    return-void
.end method

.method private startPartialScan(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .registers 5

    .line 270
    new-instance v0, Landroid/os/WorkSource;

    const/16 v1, 0x3e8

    const-string v2, "com.samsung.android.server.wifi"

    invoke-direct {v0, v1, v2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mPartialScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;

    invoke-virtual {v1, p1, v2, p0, v0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    return-void
.end method

.method private startPnoScan(Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .registers 5

    .line 261
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mPnoScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;

    invoke-virtual {v0, p2, p1, v1, p0}, Landroid/net/wifi/WifiScanner;->startDisconnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$PnoScanListener;)V

    return-void
.end method

.method private stopPnoScan()V
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mPnoScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiScanner;->stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 310
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

    const-string v1, "SilentRoamingPnoScanner"

    if-nez v0, :cond_c

    const-string p0, "listener is null"

    .line 311
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 314
    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_53

    const/4 v2, 0x1

    if-eq v0, v2, :cond_49

    const/4 v2, 0x2

    if-eq v0, v2, :cond_43

    const/4 v2, 0x3

    if-eq v0, v2, :cond_39

    const/4 v2, 0x4

    if-eq v0, v2, :cond_33

    .line 332
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WifiScanHandler: unhandled message=  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 328
    :cond_33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;->onPartialScanFailure()V

    return-void

    .line 325
    :cond_39
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/net/wifi/ScanResult;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;->onPartialScanResults([Landroid/net/wifi/ScanResult;)V

    return-void

    .line 322
    :cond_43
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;->onFullScanFailure()V

    return-void

    .line 319
    :cond_49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/net/wifi/ScanResult;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;->onFullScanResults([Landroid/net/wifi/ScanResult;)V

    return-void

    .line 316
    :cond_53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/net/wifi/ScanResult;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scan failed reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SilentRoamingPnoScanner"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 305
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->sendMessage(Landroid/os/Message;)Z

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
    .registers 3

    const/4 v0, 0x0

    .line 288
    aget-object p1, p1, v0

    .line 289
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object p1

    const/4 v0, 0x1

    .line 291
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccess()V
    .registers 1

    return-void
.end method
