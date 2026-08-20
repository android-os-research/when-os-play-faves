.class public Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
.super Ljava/lang/Object;
.source "SemWifiManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;
    }
.end annotation


# static fields
.field public static final DRIVER_SUPPORTS_24GHZ_BAND:I = 0x1

.field public static final DRIVER_SUPPORTS_5GHZ_BAND:I = 0x2

.field public static final DRIVER_SUPPORTS_6GHZ_BAND:I = 0x4

.field public static final ERROR_EXCEPTION:I = -0x1

.field public static final OPERATION_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemWifiManagerProxy"


# instance fields
.field listener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoJoinEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentNetwork:Landroid/net/Network;

.field private mDhcpInfo:Landroid/net/DhcpInfo;

.field private final mFactoryMacAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactoryMacLock:Ljava/lang/Object;

.field private final mFeatureUtil:Lcom/samsung/android/server/wifi/util/FeatureUtil;

.field private final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field private mIsQueryAutoJoinMethodResult:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mP2pStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:I

.field private final mRssiBroadcastListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanBroadcastListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private final mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mScreenStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedBands:I

.field private final mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mWifiApStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiAwareStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiConfigChangedListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

.field private final mWifiNetworkStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mWifiStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$--VFCjkH0wsiUfdGumxD8lKZiNg(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onConfiguredNetworksChanged$25(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$0dlXhOwlKi5B7JYNNk7-Ul4Q7lE(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onWifiStateChanged$22(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$2WkdVGHXSX_4cQ7ATaopyac8an8(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onRssiChanged$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$2xajPbWv-ydxJlylT86CE0xUP0c(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$3(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$52czw2FymqkV0iyqQeN6KQ8k95Q(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterP2pStateListener$16(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5Go94vtSSzsoZeK1i_21o9laWpE(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onScanResult$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$6RSg1RZA5PKUibcReMbn6BPnlHQ(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onScreenStateChanged$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ba90qaM9vvZsVY4z0yK0rrr4hAU(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onLinkConfiguredChanged$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$BtwHkFSJrTrdVv7pSJaofzHAEmA(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/net/NetworkInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onNetworkStateChanged$24(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C40du8q3y4T7gRrmixzLLQXiprI(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$7(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EXGsyP0V6RC1UMpHsyFLteeWRtE(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$10(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FIr-l-vbuHwYfM2C4hHTyqpQ8oI(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$4(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FKNXXfXvsEInHVDQ419rqDObScI(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$1(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GIWKrr2oZNXs9qHNjTC2x5-7VTE(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerP2pStateListener$15(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KmckKmg_zxRfxKDnnfC_nJQNlUs(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$initialize$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$OO74y68s-h_gWTfrVLaWK4z1TL0(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$13(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W4r3Tg4kwBnirICPlivzc05gNgk(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$9(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cCXqVjZJD2dvaSSSFD5n6cqMm6Y(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onScanResult$28(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cUZRkl0DJmVIpUx7a-8qmpNeyd8(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onWifiAwareConnectionStateChanged$19(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$htCobBXO2da7mV5uz4JoruS0dlQ(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$11(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jgFs2BcGmP6lhG4jJZXpg0MAI9w(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerWifiAwareStateListener$17(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kGrkiwd_zK8GxaIYWWmyZwPGdVY(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$5(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mJGaR74nSi6YdSC4sw6BJN3rw9w(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$12(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mxoi1sMooHLXMVF1eGxV7fllmVI(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterWifiAwareStateListener$18(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pI4KrJP_uOFA2i_yLHQlz9k4W28(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$6(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q7GpVYYPk1tLzNFAe4ecoi_UfkI(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;ZILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onP2pConnectionStateChanged$20(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$saOkKQlrEkkD-DUSzJeSSCkjtgQ(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$2(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xQpnL-bNw83w_3HLNIRJXGdpL3k(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$8(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y7U7rsT65JN56Fx5GKalF5Sm_sU(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onWifiApStateChanged$23(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yXK2T4Bp3mZJ3sXRRK0Gb_srrZA(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$14(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAutoJoinEnabled(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mAutoJoinEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsQueryAutoJoinMethodResult(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryAutoJoinMethodResult:I

    return-void
.end method

.method static bridge synthetic -$$Nest$monConfiguredNetworksChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onConfiguredNetworksChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monLinkConfiguredChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onLinkConfiguredChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNetworkStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/net/NetworkInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onNetworkStateChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monP2pConnectionStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;ZILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onP2pConnectionStateChanged(ZILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRssiChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onRssiChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monScanResult(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onScanResult(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monScreenStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onScreenStateChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monWifiApStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onWifiApStateChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monWifiAwareConnectionStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onWifiAwareConnectionStateChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monWifiStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onWifiStateChanged(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerExecutor;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Landroid/net/wifi/WifiManager;Lcom/samsung/android/server/wifi/util/FeatureUtil;Lcom/samsung/android/server/wifi/util/ScanPool;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 10

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFactoryMacAddresses:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFactoryMacLock:Ljava/lang/Object;

    const/16 v0, -0x7f

    .line 111
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mRssi:I

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiStateListeners:Ljava/util/Set;

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApStateListeners:Ljava/util/Set;

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiNetworkStateListeners:Ljava/util/Set;

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiConfigChangedListener:Ljava/util/Set;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mRssiBroadcastListener:Ljava/util/Set;

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenStateListeners:Ljava/util/Set;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanBroadcastListeners:Ljava/util/Set;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mP2pStateListeners:Ljava/util/Set;

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiAwareStateListeners:Ljava/util/Set;

    const/4 v0, 0x1

    .line 541
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mAutoJoinEnabled:Z

    const/4 v0, -0x1

    .line 542
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryAutoJoinMethodResult:I

    .line 543
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->listener:Ljava/util/function/Consumer;

    .line 127
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 129
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 130
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 131
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFeatureUtil:Lcom/samsung/android/server/wifi/util/FeatureUtil;

    .line 132
    iput-object p6, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 133
    iput-object p7, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 135
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.SCREEN_ON"

    .line 136
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.SCREEN_OFF"

    .line 137
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 138
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.net.wifi.STATE_CHANGE"

    .line 139
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 140
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.net.wifi.RSSI_CHANGED"

    .line 141
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 142
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.net.wifi.SCAN_RESULTS"

    .line 143
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 144
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

    .line 145
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p4}, Landroid/net/wifi/WifiManager;->is24GHzBandSupported()Z

    move-result p3

    .line 151
    invoke-virtual {p4}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result p5

    if-eqz p5, :cond_d6

    or-int/lit8 p3, p3, 0x2

    .line 154
    :cond_d6
    invoke-virtual {p4}, Landroid/net/wifi/WifiManager;->is6GHzBandSupported()Z

    move-result p4

    if-eqz p4, :cond_de

    or-int/lit8 p3, p3, 0x4

    .line 157
    :cond_de
    iput p3, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mSupportedBands:I

    .line 159
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private getLastCallerInfoForApi(ILjava/util/function/BiConsumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 838
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    invoke-virtual {v0, p1, p0, p2}, Landroid/net/wifi/WifiManager;->getLastCallerInfoForApi(ILjava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static getWifiApStateByName(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_16

    const-string p0, "[invalid state]"

    return-object p0

    :pswitch_6
    const-string p0, "failed"

    return-object p0

    :pswitch_9
    const-string p0, "enabled"

    return-object p0

    :pswitch_c
    const-string p0, "enabling"

    return-object p0

    :pswitch_f
    const-string p0, "disabled"

    return-object p0

    :pswitch_12
    const-string p0, "disabling"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0xa
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static getWifiStateByName(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_11

    const-string p0, "[invalid state]"

    return-object p0

    :cond_11
    const-string p0, "unknown state"

    return-object p0

    :cond_14
    const-string p0, "enabled"

    return-object p0

    :cond_17
    const-string p0, "enabling"

    return-object p0

    :cond_1a
    const-string p0, "disabled"

    return-object p0

    :cond_1d
    const-string p0, "disabling"

    return-object p0
.end method

.method private synthetic lambda$initialize$0()V
    .registers 4

    .line 255
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 256
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    return-void
.end method

.method private synthetic lambda$onConfiguredNetworksChanged$25(I)V
    .registers 3

    .line 424
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiConfigChangedListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;

    .line 425
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;->onConfiguredNetworksChanged(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$onLinkConfiguredChanged$26()V
    .registers 2

    .line 432
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;

    .line 433
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;->onLinkConfiguredChanged()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$onNetworkStateChanged$24(Landroid/net/NetworkInfo;)V
    .registers 6

    .line 401
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 402
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_10

    goto :goto_1c

    .line 410
    :cond_10
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_59

    .line 411
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    goto :goto_59

    .line 403
    :cond_1c
    :goto_1c
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mCurrentNetwork:Landroid/net/Network;

    .line 404
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_31

    .line 405
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 406
    :cond_31
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network, NetworkInfo, WifiInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_46

    const-string v0, ", DhcpInfo"

    goto :goto_48

    :cond_46
    const-string v0, ""

    .line 408
    :goto_48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " were updated"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManagerProxy"

    .line 407
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_59
    :goto_59
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;

    .line 414
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;->onNetworkStateChanged(Landroid/net/NetworkInfo;)V

    goto :goto_5f

    :cond_6f
    return-void
.end method

.method private synthetic lambda$onP2pConnectionStateChanged$20(ZILjava/lang/String;)V
    .registers 5

    .line 353
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mP2pStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;

    .line 354
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;->onP2pConnectionStateChanged(ZILjava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$onRssiChanged$27()V
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mRssiBroadcastListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;

    .line 444
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;->onRssiChanged(I)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method private synthetic lambda$onScanResult$28(Ljava/util/List;)V
    .registers 3

    .line 459
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanBroadcastListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;

    .line 460
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;->onScanResultAvailable(Ljava/util/List;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$onScanResult$29()V
    .registers 2

    .line 466
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanBroadcastListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;

    .line 467
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;->onScanFailed()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$onScreenStateChanged$21()V
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;

    .line 363
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;->onScreenStateChanged(Z)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method private synthetic lambda$onWifiApStateChanged$23(I)V
    .registers 3

    .line 391
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;

    .line 392
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;->onWifiApStateChanged(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$onWifiAwareConnectionStateChanged$19(Z)V
    .registers 3

    .line 345
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiAwareStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;

    .line 346
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;->onWifiAwareConnectionStateChanged(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$onWifiStateChanged$22(II)V
    .registers 6

    .line 371
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3b

    .line 372
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 373
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFeatureUtil:Lcom/samsung/android/server/wifi/util/FeatureUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/FeatureUtil;->initSupportedFeatures()V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFactoryMacLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFactoryMacAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 376
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFactoryMacAddresses:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "SemWifiManagerProxy"

    const-string v2, "FactoryMac was updated"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_36
    monitor-exit v0

    goto :goto_46

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_38

    throw p0

    .line 379
    :cond_3b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v1, :cond_46

    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 382
    :cond_46
    :goto_46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;

    .line 383
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;->onWifiStateChanged(II)V

    goto :goto_4c

    :cond_5c
    return-void
.end method

.method private synthetic lambda$registerListener$1(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V
    .registers 2

    .line 272
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$registerListener$11(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V
    .registers 2

    .line 312
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanBroadcastListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$registerListener$13(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V
    .registers 2

    .line 320
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$registerListener$3(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V
    .registers 2

    .line 280
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$registerListener$5(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V
    .registers 2

    .line 288
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$registerListener$7(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V
    .registers 2

    .line 296
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiConfigChangedListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$registerListener$9(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V
    .registers 2

    .line 304
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mRssiBroadcastListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$registerP2pStateListener$15(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V
    .registers 2

    .line 328
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mP2pStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$registerWifiAwareStateListener$17(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V
    .registers 2

    .line 336
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiAwareStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$unregisterListener$10(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V
    .registers 2

    .line 308
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mRssiBroadcastListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$unregisterListener$12(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V
    .registers 2

    .line 316
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanBroadcastListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$unregisterListener$14(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V
    .registers 2

    .line 324
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$unregisterListener$2(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V
    .registers 2

    .line 276
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$unregisterListener$4(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V
    .registers 2

    .line 284
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$unregisterListener$6(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V
    .registers 2

    .line 292
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$unregisterListener$8(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V
    .registers 2

    .line 300
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiConfigChangedListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$unregisterP2pStateListener$16(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V
    .registers 2

    .line 332
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mP2pStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$unregisterWifiAwareStateListener$18(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V
    .registers 2

    .line 340
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiAwareStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private onConfiguredNetworksChanged(I)V
    .registers 4

    .line 423
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda20;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onLinkConfiguredChanged()V
    .registers 3

    .line 431
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda22;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .registers 4

    if-eqz p1, :cond_f

    .line 399
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 400
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    :cond_f
    const-string p0, "SemWifiManagerProxy"

    const-string p1, "Could not get NetworkInfo"

    .line 418
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method

.method private onP2pConnectionStateChanged(ZILjava/lang/String;)V
    .registers 6

    .line 352
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda26;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onRssiChanged(I)V
    .registers 3

    .line 439
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mRssi:I

    .line 440
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_14

    .line 441
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 442
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda28;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b

    :cond_14
    const-string p0, "SemWifiManagerProxy"

    const-string p1, "Could not set rssi value. WifiInfo is null"

    .line 448
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    return-void
.end method

.method private onScanResult(Z)V
    .registers 4

    .line 453
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanBroadcastListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    .line 457
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getScanResults(Z)Ljava/util/List;

    move-result-object p1

    .line 458
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda23;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    goto :goto_2c

    :cond_1b
    const-string p1, "SemWifiManagerProxy"

    const-string v0, "scan failed"

    .line 464
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda24;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    :goto_2c
    return-void
.end method

.method private onScreenStateChanged(Z)V
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 361
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onWifiApStateChanged(I)V
    .registers 4

    .line 389
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onWifiAwareConnectionStateChanged(Z)V
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onWifiStateChanged(II)V
    .registers 5

    .line 369
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 370
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda29;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addNetworkPrivileged(Landroid/net/wifi/WifiConfiguration;)I
    .registers 2

    .line 759
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->addNetworkPrivileged(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiManager$AddNetworkResult;

    move-result-object p0

    .line 760
    iget p0, p0, Landroid/net/wifi/WifiManager$AddNetworkResult;->networkId:I

    return p0
.end method

.method public addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V
    .registers 3

    .line 846
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    return-void
.end method

.method public allowAutojoinGlobal(Z)V
    .registers 2

    .line 780
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->allowAutojoinGlobal(Z)V

    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .registers 2

    .line 776
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    return-void
.end method

.method public disableNetwork(I)Z
    .registers 2

    .line 768
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result p0

    return p0
.end method

.method public disconnect()Z
    .registers 1

    .line 804
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "SemWifiManagerProxy:"

    .line 914
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verbose logging is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "on"

    goto :goto_1a

    :cond_18
    const-string v1, "off"

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_4b

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiStateByName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDhcpInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentNetwork "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mCurrentNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRssi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiApState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApStateByName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 927
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFeatureUtil:Lcom/samsung/android/server/wifi/util/FeatureUtil;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/util/FeatureUtil;->dump(Ljava/io/PrintWriter;)V

    .line 928
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public enableNetwork(IZ)Z
    .registers 3

    .line 772
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result p0

    return p0
.end method

.method public getAutojoinGlobal()Z
    .registers 2

    .line 561
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryAutoJoinMethodResult:I

    if-nez v0, :cond_a

    const/4 v0, -0x1

    .line 562
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryAutoJoinMethodResult:I

    .line 563
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mAutoJoinEnabled:Z

    return p0

    :cond_a
    const/4 v0, 0x1

    .line 565
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mAutoJoinEnabled:Z

    return v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 527
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConfiguredNetworks(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConfiguredNetworks(Z)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 532
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 534
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 2

    const/4 v0, 0x0

    .line 575
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method public getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;
    .registers 3

    if-nez p1, :cond_6

    .line 579
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez p1, :cond_1b

    .line 580
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 581
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "SemWifiManagerProxy"

    const-string v0, "WifiInfo was updated (sync)"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_1b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 1

    .line 800
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .registers 2

    const/4 v0, 0x0

    .line 720
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork(Z)Landroid/net/Network;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentNetwork(Z)Landroid/net/Network;
    .registers 3

    if-nez p1, :cond_6

    .line 725
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mCurrentNetwork:Landroid/net/Network;

    if-nez p1, :cond_1b

    .line 726
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mCurrentNetwork:Landroid/net/Network;

    .line 727
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "SemWifiManagerProxy"

    const-string v0, "Network was updated (sync)"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_1b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mCurrentNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    const/4 v0, 0x0

    .line 611
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo(Z)Landroid/net/DhcpInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDhcpInfo(Z)Landroid/net/DhcpInfo;
    .registers 3

    if-nez p1, :cond_6

    .line 615
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mDhcpInfo:Landroid/net/DhcpInfo;

    if-nez p1, :cond_1b

    .line 616
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 617
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "SemWifiManagerProxy"

    const-string v0, "DhcpInfo was updated (sync)"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_1b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object p0
.end method

.method public getDriverSupportedBands()I
    .registers 1

    .line 932
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mSupportedBands:I

    return p0
.end method

.method public getFactoryMacAddresses()[Ljava/lang/String;
    .registers 3

    .line 753
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFactoryMacLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFactoryMacAddresses:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 755
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getLastCallerInfoForAp(Ljava/util/function/BiConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 833
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getLastCallerInfoForApi(ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public getLastCallerInfoForScan(Ljava/util/function/BiConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 829
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getLastCallerInfoForApi(ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public getLastCallerInfoForSta(Ljava/util/function/BiConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 825
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getLastCallerInfoForApi(ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 538
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScanResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 595
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getScanResults(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScanResults(Z)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 600
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 602
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScanResults()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .registers 1

    .line 706
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 1

    .line 796
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApState()I
    .registers 1

    .line 677
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    return p0
.end method

.method public getWifiApStateCached()I
    .registers 1

    .line 681
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getWifiState()I
    .registers 1

    .line 630
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public initialize()V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isAutoWakeupEnabled()Z
    .registers 1

    .line 788
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isAutoWakeupEnabled()Z

    move-result p0

    return p0
.end method

.method public isConnected()Z
    .registers 1

    .line 587
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isEnhancedOpenSupported()Z
    .registers 3

    .line 743
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFeatureUtil:Lcom/samsung/android/server/wifi/util/FeatureUtil;

    const-wide/32 v0, 0x20000000

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/util/FeatureUtil;->isSupported(J)Z

    move-result p0

    return p0
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "SemWifiManagerProxy"

    const/4 v1, 0x0

    .line 878
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 879
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 881
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    if-eqz v2, :cond_1e

    .line 884
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move v1, p0

    goto :goto_39

    :cond_1e
    const-string p0, "isPackageExists | package is not system app or not available"

    .line 889
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_23} :catch_25

    move v1, v2

    goto :goto_39

    .line 894
    :catch_25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return v1
.end method

.method public isScanAlwaysAvailable()Z
    .registers 1

    .line 647
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result p0

    return p0
.end method

.method public isScreenOn()Z
    .registers 1

    .line 821
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isSemWifiApDataUsageSupported()Z
    .registers 4

    .line 857
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 858
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vendor.wifiap.newUX"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "SemWifiManagerProxy"

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1c

    const-string p0, "wifiap newUX force enable "

    .line 860
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1c
    const/4 v2, 0x2

    if-ne p0, v2, :cond_24

    const-string p0, "wifiap newUX force disable "

    .line 863
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return v1
.end method

.method public isSemWifiApGuestModeSupported()Z
    .registers 4

    .line 899
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 900
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vendor.wifiap.newUX"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "SemWifiManagerProxy"

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1c

    const-string p0, "wifiap newUX force enable "

    .line 902
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1c
    const/4 v2, 0x2

    if-ne p0, v2, :cond_24

    const-string p0, "wifiap newUX force disable "

    .line 905
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return v1
.end method

.method public isTrustOnFirstUseSupported()Z
    .registers 3

    .line 853
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFeatureUtil:Lcom/samsung/android/server/wifi/util/FeatureUtil;

    const-wide/high16 v0, 0x10000000000000L

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/util/FeatureUtil;->isSupported(J)Z

    move-result p0

    return p0
.end method

.method public isVerboseLoggingEnabled()Z
    .registers 1

    .line 482
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isWifiApDataUsageWidgetSupported()Z
    .registers 2

    const-string v0, "com.sec.mhs.smartmhswidget"

    .line 872
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isPackageExists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isWifiApEnabled()Z
    .registers 2

    .line 690
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isWifiApEnabledCached()Z
    .registers 2

    .line 694
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApStateCached()I

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isWifiEnabled()Z
    .registers 2

    .line 639
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isWifiPasspointEnabled()Z
    .registers 1

    .line 657
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiPasspointEnabled()Z

    move-result p0

    return p0
.end method

.method public isWpa3SaeSupported()Z
    .registers 3

    .line 736
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFeatureUtil:Lcom/samsung/android/server/wifi/util/FeatureUtil;

    const-wide/32 v0, 0x8000000

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/util/FeatureUtil;->isSupported(J)Z

    move-result p0

    return p0
.end method

.method public queryAutojoinGlobal()V
    .registers 5

    const/4 v0, -0x1

    .line 552
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->listener:Ljava/util/function/Consumer;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->queryAutojoinGlobal(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_11
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_18

    :catchall_f
    move-exception v1

    goto :goto_1b

    :catch_11
    :try_start_11
    const-string v1, "SemWifiManagerProxy"

    const-string v2, "queryAutojoinGlobal Exception occurred "

    .line 554
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_f

    .line 556
    :goto_18
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryAutoJoinMethodResult:I

    return-void

    :goto_1b
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryAutoJoinMethodResult:I

    .line 557
    throw v1
.end method

.method public reconnect()Z
    .registers 1

    .line 808
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda25;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V
    .registers 4

    .line 312
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda27;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V
    .registers 4

    .line 320
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V
    .registers 4

    .line 280
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V
    .registers 4

    .line 296
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V
    .registers 4

    .line 288
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerP2pStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerWifiAwareStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V
    .registers 4

    .line 336
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda19;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAutoWakeupEnabled(Z)V
    .registers 2

    .line 792
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setAutoWakeupEnabled(Z)V

    return-void
.end method

.method public setDefaultCountryCode(Ljava/lang/String;)V
    .registers 2

    .line 817
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setDefaultCountryCode(Ljava/lang/String;)V

    return-void
.end method

.method public setSilentRoamingEnabled(Z)V
    .registers 2

    .line 842
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->semSetSilentRoamingEnabled(Z)V

    return-void
.end method

.method public setThirdPartyAppEnablingWifiConfirmationDialogEnabled(Z)V
    .registers 2

    .line 974
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setThirdPartyAppEnablingWifiConfirmationDialogEnabled(Z)V

    return-void
.end method

.method public setVerboseLoggingState(I)V
    .registers 4

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verbose: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManagerProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-lez p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setWifiConnectedNetworkScorer(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;)Z
    .registers 3

    .line 813
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->setWifiConnectedNetworkScorer(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;)Z

    move-result p0

    return p0
.end method

.method public setWifiEnabled(Z)Z
    .registers 2

    .line 643
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public setWifiPasspointEnabled(Z)V
    .registers 2

    .line 666
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiPasspointEnabled(Z)V

    return-void
.end method

.method public startLocalOnlyHotspot(Landroid/net/wifi/SoftApConfiguration;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
    .registers 4

    .line 712
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager;->startLocalOnlyHotspot(Landroid/net/wifi/SoftApConfiguration;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V

    return-void
.end method

.method public startScan()Z
    .registers 1

    .line 784
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result p0

    return p0
.end method

.method public startTetheredHotspot(Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 2

    .line 698
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->startTetheredHotspot(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result p0

    return p0
.end method

.method public stopSoftAp()Z
    .registers 1

    .line 702
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->stopSoftAp()Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V
    .registers 4

    .line 308
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V
    .registers 4

    .line 316
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V
    .registers 4

    .line 324
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V
    .registers 4

    .line 284
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V
    .registers 4

    .line 300
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V
    .registers 4

    .line 292
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V
    .registers 4

    .line 276
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterP2pStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V
    .registers 4

    .line 332
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda21;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterWifiAwareStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V
    .registers 4

    .line 340
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 2

    .line 764
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    return p0
.end method
