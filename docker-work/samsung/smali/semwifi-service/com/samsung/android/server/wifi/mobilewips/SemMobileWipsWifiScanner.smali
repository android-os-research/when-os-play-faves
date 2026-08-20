.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;
.super Ljava/lang/Object;
.source "SemMobileWipsWifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;,
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;
    }
.end annotation


# static fields
.field private static final MWIPS_PACKAGE:Ljava/lang/String; = "com.samsung.android.server.wifi.mobilewips"

.field private static final TAG:Ljava/lang/String; = "MobileWips::scanner"

.field private static final mLock:Ljava/lang/Object;

.field private static mStarted:Z


# instance fields
.field private final ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

.field private mPartialScanListener:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;

.field private mScannerThread:Landroid/os/HandlerThread;

.field private final mWifiScanner:Landroid/net/wifi/WifiScanner;

.field private mWipsScannerHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPartialScanListener(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mPartialScanListener:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)Landroid/net/wifi/WifiScanner;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkSource(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)Landroid/os/WorkSource;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWorkSource:Landroid/os/WorkSource;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetmStarted()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mStarted:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;Landroid/net/wifi/WifiScanner;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    .line 55
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MobileWips::scanner"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mScannerThread:Landroid/os/HandlerThread;

    .line 56
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mScannerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWipsScannerHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

    .line 58
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 59
    new-instance p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mPartialScanListener:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;

    .line 60
    new-instance p1, Landroid/os/WorkSource;

    const/16 p2, 0x3e8

    const-string v0, "com.samsung.android.server.wifi.mobilewips"

    invoke-direct {p1, p2, v0}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method


# virtual methods
.method public getHandler()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWipsScannerHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

    return-object p0
.end method

.method public removeMessages(I)V
    .registers 2

    .line 86
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWipsScannerHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;->removeMessages(I)V

    return-void
.end method

.method public sendEmptyMessage(I)V
    .registers 3

    .line 90
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 91
    iput p1, v0, Landroid/os/Message;->what:I

    .line 92
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendEmptyMessageDelayed(II)V
    .registers 5

    .line 82
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWipsScannerHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWipsScannerHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public start()V
    .registers 2

    .line 64
    sget-object p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x1

    .line 65
    :try_start_4
    sput-boolean v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mStarted:Z

    .line 66
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public stop()V
    .registers 3

    .line 70
    sget-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 71
    :try_start_4
    sput-boolean v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mStarted:Z

    .line 72
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_15

    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mPartialScanListener:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWipsScannerHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :catchall_15
    move-exception p0

    .line 72
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method
