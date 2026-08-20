.class Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;
.super Landroid/os/Handler;
.source "Scanner.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiScanHandler"
.end annotation


# static fields
.field private static final RECV_SCAN_DATA:I = 0x0

.field private static final RECV_SCAN_RESULTS:I = 0x1


# instance fields
.field private mClientListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

.field private final mContext:Landroid/content/Context;

.field private mIsRegisteredListener:Z

.field private mIsRegisteredPnoListener:Z

.field private final mNetworkPnoScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;

.field private mTargetConfigKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/Scanner;


# direct methods
.method static bridge synthetic -$$Nest$mstartScan(Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->startScan(Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartScan(Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->stopPnoScan()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/Scanner;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    .line 241
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->this$0:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 242
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 243
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mContext:Landroid/content/Context;

    .line 244
    new-instance p2, Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;-><init>(Lcom/samsung/android/server/wifi/autowifi/Scanner;Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener-IA;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mNetworkPnoScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;

    return-void
.end method

.method private findFrom([Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .registers 8

    .line 381
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    const-string v2, "AutoWifi.Scanner"

    if-ge v1, v0, :cond_4d

    aget-object v3, p1, v1

    .line 382
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_4a

    .line 383
    :cond_11
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 384
    invoke-static {v3}, Lcom/samsung/android/server/wifi/util/ScanPool;->getSecurityString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->getConfigKeys(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 385
    iget-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mTargetConfigKeys:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 386
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "found "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 391
    :cond_4d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not found, scan result size: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getConfigKeys(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 373
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 374
    array-length v0, p2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_28

    aget-object v2, p2, v1

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_28
    return-object p0
.end method

.method private notifyToClient(Ljava/lang/String;)V
    .registers 3

    .line 363
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    if-eqz v0, :cond_15

    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 365
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;->onNetworkNotFound()V

    goto :goto_15

    .line 367
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;->onNetworkFound(Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void
.end method

.method private registerScanListener()V
    .registers 2

    .line 276
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredListener:Z

    if-nez v0, :cond_10

    .line 277
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->retrieveWifiScannerIfNecessary()V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiScanner;->registerScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredListener:Z

    goto :goto_17

    :cond_10
    const-string p0, "AutoWifi.Scanner"

    const-string v0, "already registered"

    .line 281
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void
.end method

.method private retrieveWifiScannerIfNecessary()V
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-nez v0, :cond_10

    .line 249
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiScanner;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    :cond_10
    return-void
.end method

.method private startScan(Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .registers 6

    .line 263
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mNetworkPnoScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;

    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/net/wifi/WifiScanner;->startDisconnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$PnoScanListener;)V

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredPnoListener:Z

    return-void
.end method

.method private startScan(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .registers 7

    .line 254
    new-instance v0, Landroid/os/WorkSource;

    const/16 v1, 0x3e8

    const-string v2, "com.samsung.android.server.wifi"

    invoke-direct {v0, v1, v2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->retrieveWifiScannerIfNecessary()V

    .line 257
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/Scanner$HiddenNetworkScanListener;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->this$0:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/autowifi/Scanner$HiddenNetworkScanListener;-><init>(Lcom/samsung/android/server/wifi/autowifi/Scanner;Lcom/samsung/android/server/wifi/autowifi/Scanner$HiddenNetworkScanListener-IA;)V

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    return-void
.end method

.method private stopPnoScan()V
    .registers 2

    .line 269
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredPnoListener:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredPnoListener:Z

    .line 271
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mNetworkPnoScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiScanner;->stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    :cond_e
    return-void
.end method

.method private unregisterScanListener()V
    .registers 2

    .line 286
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredListener:Z

    if-eqz v0, :cond_10

    .line 287
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->retrieveWifiScannerIfNecessary()V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiScanner;->unregisterScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredListener:Z

    goto :goto_17

    :cond_10
    const-string p0, "AutoWifi.Scanner"

    const-string v0, "already unregistered"

    .line 291
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 335
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    if-nez v0, :cond_c

    const-string p0, "AutoWifi.Scanner"

    const-string p1, "listener is null"

    .line 336
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 339
    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_30

    .line 349
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/net/wifi/WifiScanner$ScanData;

    .line 350
    array-length v0, p1

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_42

    aget-object v2, p1, v1

    .line 351
    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->findFrom([Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 353
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->notifyToClient(Ljava/lang/String;)V

    return-void

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 341
    :cond_30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/net/wifi/ScanResult;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->findFrom([Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 343
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->notifyToClient(Ljava/lang/String;)V

    return-void

    :cond_42
    const/4 p1, 0x0

    .line 359
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->notifyToClient(Ljava/lang/String;)V

    return-void
.end method

.method isTracking()Z
    .registers 1

    .line 307
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredListener:Z

    return p0
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4

    .line 329
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scan failed reason: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoWifi.Scanner"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 316
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccess()V
    .registers 1

    return-void
.end method

.method startTracking(Ljava/util/Set;Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;",
            ")V"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mTargetConfigKeys:Ljava/util/Set;

    .line 297
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    .line 298
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->registerScanListener()V

    return-void
.end method

.method stopTracking()V
    .registers 2

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    .line 303
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->unregisterScanListener()V

    return-void
.end method
